SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[dtaDeleteSummaryTrxAnalysis]  @I_iJournalEntry int  = NULL,  @I_nHDRRecurringTrxSeq numeric(19,5) = NULL,  @I_sHDRSeries smallint = NULL,  @I_nDTAIndex numeric(19,5) = NULL,  @I_sDTASeries smallint = NULL,  @I_cOrigTrxSource char(13) = NULL,  @O_iErrorState                  int             = NULL output as  declare  @TRUE tinyint,  @tLoopControl           tinyint,  @sDTAGLStatus smallint,  @iSequenceNumber int,  @iOrigSequenceNumber int,  @cOrigDocumentNumber char(21),  @cOrigControlNumber char(21),  @sOrigTrxType smallint,  @sDTASeries smallint,  @cDTAReference char(25),  @iSequenceLine int,  @cDTAGLReference char(25),  @cDocumentNumber char(21),  @sDocumentType smallint,  @iAccountIndex int,  @iCursorError int,  @iStatus int,  @iError int  select  @O_iErrorState = 0,  @TRUE  = 1,  @iStatus = 0  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_iJournalEntry is NULL or  @I_nHDRRecurringTrxSeq is NULL or  @I_sHDRSeries is NULL or  @I_nDTAIndex is NULL or  @I_sDTASeries is NULL or  @I_cOrigTrxSource is NULL  begin  select @O_iErrorState = 20987  break  end    declare  TrxLine INSENSITIVE  cursor for select  DTA_GL_Status,  convert(int,SQNCLINE),  OrigSeqNum,  ORDOCNUM,  ORCTRNUM,  ORTRXTYP,  ACTINDX  from  GL10001  where  JRNENTRY = @I_iJournalEntry   open TrxLine   select @iCursorError = @@cursor_rows   if @iCursorError = 0  begin  deallocate TrxLine  end   else   begin  fetch next from   TrxLine  into  @sDTAGLStatus,  @iSequenceNumber,  @iOrigSequenceNumber,  @cOrigDocumentNumber,  @cOrigControlNumber,  @sOrigTrxType,  @iAccountIndex   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 20988  break  end   exec @iStatus = dtaGetGLKeyFields  @sDTAGLStatus,  @I_nHDRRecurringTrxSeq,  @iSequenceNumber,  @iOrigSequenceNumber,  @cOrigDocumentNumber,  @cOrigControlNumber,  @sOrigTrxType,  @I_cOrigTrxSource,  @I_sHDRSeries,  @I_sDTASeries,  1,  @I_nDTAIndex,  @sDTASeries output,  @cDTAReference output,  @iSequenceLine output,  @cDTAGLReference output,  @cDocumentNumber output,  @sDocumentType output,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   if @cDTAGLReference = ''   begin  exec @iStatus = dtaDeleteStats  @cDTAReference,  @sDTASeries,  @iAccountIndex,  @iSequenceLine,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   end    ELSE   begin  delete  DTA10200  from  DTA10100  where  DTA10200.DTASERIES = DTA10100.DTASERIES  and DTA10200.DTAREF = DTA10100.DTAREF  and DTA10200.ACTINDX = DTA10100.ACTINDX  and DTA10200.SEQNUMBR = DTA10100.SEQNUMBR  and DTA10200.GROUPID = DTA10100.GROUPID  and DTA10100.DTA_GL_Reference = @cDTAGLReference  and DTA10100.DTASERIES = @sDTASeries  and DTA10100.ACTINDX = @iAccountIndex   delete  DTA10100  where  DTA_GL_Reference = @cDTAGLReference  and DTASERIES = @sDTASeries  and ACTINDX = @iAccountIndex   end    fetch next from   TrxLine  into  @sDTAGLStatus,  @iSequenceNumber,  @iOrigSequenceNumber,  @cOrigDocumentNumber,  @cOrigControlNumber,  @sOrigTrxType,  @iAccountIndex   end    deallocate TrxLine   end   end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[dtaDeleteSummaryTrxAnalysis] TO [DYNGRP]
GO
