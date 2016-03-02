SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpProcessClearingVoid]  @iJournalEntry int  = NULL,  @iYear smallint = NULL,  @iRecurTrxSeq numeric(19,5) = NULL,  @iFuncCurId char(15) = NULL,  @iFuncCurIdx smallint = NULL,  @iHistoryYear smallint = NULL as  declare  @lTrxStarted tinyint,  @lControlLoop tinyint,  @lReturnStatus int,  @lSqlError int,  @lError int,  @lAllocAcctIdx int,  @lLineMessages binary(4),  @lWorkCursorCreated tinyint,  @lAllocationCursorCreated tinyint,  @lCompanyID char(5),  @lRelationID int,  @lUserLevel smallint,  @lAccessAllAccounts int,  @lAlsRegistered tinyint,  @lSeqLine numeric(19,5),  @lAcctIdx int,  @lOffAcctIdx int,  @lDesc char(31),  @lAcctType smallint,  @lOffAcctType smallint,  @lSourceDocument      char(11),  @lReference           char(31),  @lTrxDate             datetime,  @lTrxSource           char(13),  @lLastUser            char(15),  @lLastDateEdited      datetime,  @lUserWhoPosted       char(15),  @lNoteIdx             numeric(19,5),  @lPeriodID            smallint,  @lBatchSource char(15),  @lBatchNumber char(15),  @lSeries smallint,  @OrigPostedDate datetime,  @nLedgerID int  select @lLineMessages = 0 select @lError = 0 select @lSqlError = 0 select @lReturnStatus = 0 select @lWorkCursorCreated = 0 select @lAllocationCursorCreated = 0 select @lCompanyID = db_name()  if @@trancount = 0 begin  select @lTrxStarted = 1  begin transaction end  while (@lControlLoop is NULL) begin  select @lControlLoop = 1   if @iJournalEntry is NULL or  @iYear is NULL or   @iRecurTrxSeq is NULL or  @iFuncCurId is NULL or  @iFuncCurIdx is NULL or  @iHistoryYear is NULL  begin  select @lReturnStatus = 1  break  end   select  @lSourceDocument = SOURCDOC,  @lReference = REFRENCE,  @lTrxDate = TRXDATE,  @lTrxSource = TRXSORCE,  @lLastUser = LASTUSER,  @lLastDateEdited = LSTDTEDT,  @lUserWhoPosted = USWHPSTD,  @lNoteIdx = NOTEINDX,  @lPeriodID = PERIODID,  @lBatchSource = BACHNUMB,  @lBatchNumber = BCHSOURC,  @lSeries = SERIES,  @OrigPostedDate = ORPSTDDT,  @nLedgerID = Ledger_ID  from  GL10000  where  JRNENTRY = @iJournalEntry  and  RCTRXSEQ = @iRecurTrxSeq   declare  WorkCursor  cursor for   select  ACTINDX,  SQNCLINE,  OFFINDX,  DSCRIPTN,  ACCTTYPE,  OFFACTYP  from  GL10002  where  JRNENTRY = @iJournalEntry  order by  SQNCLINE   open WorkCursor  select @lWorkCursorCreated = 1   if @@cursor_rows = 0  begin  select @lReturnStatus = 1  break  end  fetch   next   from  WorkCursor  into   @lAcctIdx,   @lSeqLine,  @lOffAcctIdx,   @lDesc,   @lAcctType,   @lOffAcctType   while @@fetch_status = 0  begin   exec @lReturnStatus = glpCreateVoidRecord  @iHistoryYear,  @iYear,  @iJournalEntry,  @iRecurTrxSeq,  @lSourceDocument,  @lReference,  @lDesc,  @lTrxDate,  @lTrxSource,  @lAcctIdx,  @lLastUser,  @lLastDateEdited,  @lUserWhoPosted,  '',   0,   @lSeries,   '',   '',   '',   '',   @OrigPostedDate,   0,   @iFuncCurId,  @iFuncCurIdx,  '',   '',   0,   '',   '',   0,   @lNoteIdx,  0,   '',   0,    0,   0,   '',   @lSeqLine,  2,   '',   1,   @nLedgerID   exec @lReturnStatus = glpUpdateAllocationRegister  2,   @iJournalEntry,  @lBatchNumber,  @lBatchSource,  @lUserWhoPosted,  0,  @lAcctIdx,  @lAcctType,  0,  0,  @lTrxDate,  @lSeqLine,  @lDesc,  0,   0,   0,   @lLineMessages,  @iFuncCurId,  @iFuncCurIdx,  @lLineMessages,  0,  0,  @iFuncCurId,  @iFuncCurIdx,  '',  0,  '',  '',  '',  '',  0,  0,  0,  0,  @lError output   select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end   if @lError <> 0  begin  select @lReturnStatus = @lError  break  end    select @lSeqLine = @lSeqLine + 1   if @lOffAcctType = 3   begin  declare  AllocationCursor  cursor for  select  DSTINDX  from  GL00103  where  ACTINDX = @lOffAcctIdx  open AllocationCursor  select @lAllocationCursorCreated = 1  if @@cursor_rows = 0  begin   select @lReturnStatus = 1  break  end  fetch  next  from  AllocationCursor  into  @lAllocAcctIdx  while @@fetch_status = 0  begin    exec @lReturnStatus = glpCreateVoidRecord  @iHistoryYear,  @iYear,  @iJournalEntry,  @iRecurTrxSeq,  @lSourceDocument,  @lReference,  @lDesc,  @lTrxDate,  @lTrxSource,  @lAllocAcctIdx,  @lLastUser,  @lLastDateEdited,  @lUserWhoPosted,  '',   0,   @lSeries,   '',   '',   '',   '',   @OrigPostedDate,   0,   @iFuncCurId,  @iFuncCurIdx,  '',   '',   0,   '',   '',   0,   @lNoteIdx,  0,   '',   0,    0,   0,   '',   @lSeqLine,  2,   '',   1,   @nLedgerID  fetch  next  from  AllocationCursor  into  @lAllocAcctIdx  end    end   else   begin  exec @lReturnStatus = glpCreateVoidRecord  @iHistoryYear,  @iYear,  @iJournalEntry,  @iRecurTrxSeq,  @lSourceDocument,  @lReference,  @lDesc,  @lTrxDate,  @lTrxSource,  @lOffAcctIdx,  @lLastUser,  @lLastDateEdited,  @lUserWhoPosted,  '',   0,   @lSeries,   '',   '',   '',   '',   @OrigPostedDate,   0,   @iFuncCurId,  @iFuncCurIdx,  '',   '',   0,   '',   '',   0,   @lNoteIdx,  0,   '',   0,    0,   0,   '',   @lSeqLine,  2,   '',   1,   @nLedgerID  end    exec @lReturnStatus = glpUpdateAllocationRegister  2,   @iJournalEntry,  @lBatchNumber,  @lBatchSource,  @lUserWhoPosted,  0,  @lOffAcctIdx,  @lOffAcctType,  0,  0,  @lTrxDate,  @lSeqLine,  @lDesc,  1,   0,   0,   @lLineMessages,  @iFuncCurId,  @iFuncCurIdx,  @lLineMessages,  0,  0,  @iFuncCurId,  @iFuncCurIdx,  '',  0,  '',  '',  '',  '',  0,  0,  0,  0,  @lError output   select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end   if @lError <> 0  begin  select @lReturnStatus = @lError  break  end  fetch   next   from  WorkCursor  into  @lAcctIdx,   @lSeqLine,  @lOffAcctIdx,   @lDesc,   @lAcctType,   @lOffAcctType  end     exec @lReturnStatus = DYNAMICS..smGetAccountLevelSecurityInfo  @lCompanyID,  @lRelationID output,  @lUserLevel output,  @lAccessAllAccounts output,  @lAlsRegistered output  exec @lReturnStatus = glpGetAccountInfo  '',  0,  0,  @lUserWhoPosted,  @lRelationID,  @lUserLevel,  @lAccessAllAccounts,  @lAlsRegistered,  @lError output  end   if @lWorkCursorCreated = 1  deallocate WorkCursor  if @lAllocationCursorCreated = 1  deallocate AllocationCursor  return(@lReturnStatus)   
GO
GRANT EXECUTE ON  [dbo].[glpProcessClearingVoid] TO [DYNGRP]
GO