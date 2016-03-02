SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[glpCopyOpenJEToWork]  @iNewJrnlEntry int  = NULL,  @iCopyJrnlEntry int  = NULL,  @iTrxYear int  = NULL,  @iRecurTrxSeq numeric(19,5) = NULL,  @iRevDistFlag smallint = NULL,  @iBatchNum char(15) = NULL,  @iCompanyID char(5)  = NULL,  @iReversingTrx tinyint  = NULL,  @iDocDate datetime = NULL,  @iDecimalPlaces smallint = NULL,  @iCurrencyIndex smallint = NULL,  @iNewDTAIndex numeric(19,5) = NULL,    @oICTRX smallint = NULL output    as declare  @lTrxStarted tinyint,  @lControlLoop tinyint,  @BACKOUT tinyint,  @POSTINGACCT tinyint,  @NOTFIXEDORVAR tinyint,  @GLLINETYPESTD tinyint,  @lOpenCursorCreated smallint,  @lReturnStatus int,  @lSqlError int,  @lError int,  @lSeqNumber int,  @lNewSeqNumber int,  @lActIndx int,  @lXChgRate numeric(19,7),  @lDescrition char(31),  @lPostingType smallint,  @lDecPlaces smallint,  @lAcctType smallint,  @lOrgCtrlNum char(21),  @lOrgDocNum char(21),  @lOrgMstrID char(31),  @lOrgMstrName char(65),  @lCpyJEDTAReference char(25),  @lNewJEDTAReference char(25),  @lOrigSeqNum int,  @lDTAGLStatus smallint,  @lDTAIndex numeric(19,5),  @lRateTypeID char(15),  @lExchTableID char(15),  @lExchDate datetime,  @lTime1 datetime,  @lRateCalcMthd smallint,  @lCreditAmt numeric(19,5),  @lDebitAmt numeric(19,5),  @lOrgCrdAmt numeric(19,5),  @lOrgDbtAmt numeric(19,5),  @lDenXRate numeric(19,7),  @lTempAmount numeric(19,5),    @ICTRX tinyint,    @DestCompID varchar(5),    @TrxType smallint    select @oICTRX = 0   if exists ( select 1 from GL20000 where ICTRX = 1 and JRNENTRY = @iCopyJrnlEntry  						   and   OPENYEAR = @iTrxYear  						   and RCTRXSEQ = @iRecurTrxSeq)   								  select @oICTRX = 1, @TrxType = 1    if (@oICTRX = 1)    begin     exec @lReturnStatus = glpCopyOpenJEToWorkforIC   @iNewJrnlEntry,  @iCopyJrnlEntry,  @iTrxYear,  @iRecurTrxSeq,  @iRevDistFlag,   					           @iBatchNum,  @iCompanyID,  @iReversingTrx,  @iDocDate,  @iDecimalPlaces,                					   @iCurrencyIndex,  @iNewDTAIndex     return (@lReturnStatus)    end   while (@lControlLoop is NULL) begin  select @lControlLoop = 1  if @iNewJrnlEntry is NULL or  @iCopyJrnlEntry is NULL or  @iTrxYear is NULL or  @iRecurTrxSeq is NULL or  @iRevDistFlag is NULL or  @iBatchNum is NULL or  @iCompanyID is NULL or  @iReversingTrx is NULL or  @iDocDate is NULL or  @iDecimalPlaces is NULL or  @iCurrencyIndex is NULL  begin  select @lReturnStatus = 1  break  end  select  @lNewSeqNumber  = 500  select  @BACKOUT  = 1,  @POSTINGACCT  = 1,  @NOTFIXEDORVAR  = 0,  @GLLINETYPESTD  = 5  declare  TrxOpenCursor  cursor local for   select  SEQNUMBR,  ACTINDX,  XCHGRATE,  DSCRIPTN,  ORCTRNUM,  ORDOCNUM,  ORMSTRID,  ORMSTRNM,  OrigSeqNum,  DTA_GL_Status,  DTA_Index,  RATETPID,  EXGTBLID,  EXCHDATE,  TIME1,  RTCLCMTD,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  DENXRATE  from  GL20000  where  OPENYEAR = @iTrxYear and  JRNENTRY = @iCopyJrnlEntry and  RCTRXSEQ = @iRecurTrxSeq  order by  SEQNUMBR  open TrxOpenCursor  select @lOpenCursorCreated = 1  if @@cursor_rows = 0  begin   select @lReturnStatus = 1  break  end  fetch next   from   TrxOpenCursor  into  @lSeqNumber,  @lActIndx,  @lXChgRate,  @lDescrition,  @lOrgCtrlNum,  @lOrgDocNum,  @lOrgMstrID,  @lOrgMstrName,  @lOrigSeqNum,  @lDTAGLStatus,  @lDTAIndex,  @lRateTypeID,  @lExchTableID,  @lExchDate,  @lTime1,  @lRateCalcMthd,  @lCreditAmt,  @lDebitAmt,  @lOrgCrdAmt,  @lOrgDbtAmt,  @lDenXRate  while @@fetch_status = 0  begin  select   @lPostingType = PSTNGTYP,  @lDecPlaces = DECPLACS,  @lAcctType = ACCTTYPE  from   GL00100  where   ACTINDX = @lActIndx  if @lAcctType = @POSTINGACCT  begin  select @lDecPlaces = @iDecimalPlaces  end  if @iRevDistFlag = @BACKOUT  begin  select @lTempAmount = @lCreditAmt,  @lCreditAmt = @lDebitAmt,  @lDebitAmt = @lTempAmount  select @lTempAmount = @lOrgCrdAmt,  @lOrgCrdAmt = @lOrgDbtAmt,  @lOrgDbtAmt = @lTempAmount  end  select @lDTAGLStatus = @lDTAGLStatus & 0xfff9    		   insert into   GL10001  (BACHNUMB,  JRNENTRY,  SQNCLINE,  ACTINDX,  XCHGRATE,  DSCRIPTN,  CURRNIDX,  ACCTTYPE,  FXDORVAR,  PSTNGTYP,  DECPLACS,  ORCTRNUM,  ORDOCNUM,  ORMSTRID,  ORMSTRNM,  OrigSeqNum,  DTA_GL_Status,  INTERID,  RATETPID,  EXGTBLID,  EXCHDATE,  TIME1,  RTCLCMTD,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  DENXRATE,  LNESTAT)  select  @iBatchNum,  @iNewJrnlEntry,  @lNewSeqNumber,  @lActIndx,  @lXChgRate,  @lDescrition,  @iCurrencyIndex,  @lAcctType,     @NOTFIXEDORVAR,    @lPostingType,  @lDecPlaces,  @lOrgCtrlNum,  @lOrgDocNum,  @lOrgMstrID,  @lOrgMstrName,  @lOrigSeqNum,  @lDTAGLStatus,  @iCompanyID,  @lRateTypeID,  @lExchTableID,  @lExchDate,  @lTime1,  @lRateCalcMthd,  @lCreditAmt,  @lDebitAmt,  @lOrgCrdAmt,  @lOrgDbtAmt,  @lDenXRate,  @GLLINETYPESTD   select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end  exec dtaGetFinancialRef  @lDTAIndex,  @iReversingTrx,  @iRecurTrxSeq,  @lCpyJEDTAReference output,  @lError output  select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end   if @lError <> 0  begin  select @lReturnStatus = @lError  break  end   if exists(select  1  from  DTA10100  where  DTAREF = @lCpyJEDTAReference and  SEQNUMBR = @lSeqNumber and  JRNENTRY = @iCopyJrnlEntry)  begin  exec dtaGetFinancialRef  @iNewDTAIndex,  @iReversingTrx,  0,  @lNewJEDTAReference output,  @lError output  select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end   if @lError <> 0  begin  select @lReturnStatus = @lError  break  end  exec @lReturnStatus = glpCopyDtaToWork  @iCopyJrnlEntry,  @iNewJrnlEntry,  @lDTAIndex,  @iNewDTAIndex,  @iRecurTrxSeq,  @iRevDistFlag,  @iReversingTrx,  @lSeqNumber,  @lNewSeqNumber,  @iDocDate,  @lCpyJEDTAReference,  @lNewJEDTAReference  select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end   if @lReturnStatus <> 0  break  end    select  @lNewSeqNumber = @lNewSeqNumber + 500  fetch next   from   TrxOpenCursor  into  @lSeqNumber,  @lActIndx,  @lXChgRate,  @lDescrition,  @lOrgCtrlNum,  @lOrgDocNum,  @lOrgMstrID,  @lOrgMstrName,  @lOrigSeqNum,  @lDTAGLStatus,  @lDTAIndex,  @lRateTypeID,  @lExchTableID,  @lExchDate,  @lTime1,  @lRateCalcMthd,  @lCreditAmt,  @lDebitAmt,  @lOrgCrdAmt,  @lOrgDbtAmt,  @lDenXRate  end    if @lOpenCursorCreated = 1  deallocate TrxOpenCursor end   return (@lReturnStatus)  
GO
GRANT EXECUTE ON  [dbo].[glpCopyOpenJEToWork] TO [DYNGRP]
GO
