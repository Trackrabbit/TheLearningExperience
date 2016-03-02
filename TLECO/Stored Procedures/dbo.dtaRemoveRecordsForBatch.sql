SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[dtaRemoveRecordsForBatch]  @I_cBatchNumber char(15) = NULL,  @I_cBatchSource char(15) = NULL,  @O_iErrorState                  int             = NULL output as  declare  @TRUE tinyint,  @FALSE tinyint,  @tLoopControl           tinyint,  @iJournalEntry int,  @sDTASeries smallint,  @vDTAControlNumber varchar(21),  @nDTAIndex Numeric(19,5),  @sDTATrxType smallint,  @nHDRRecurringTrxSeq numeric(19,5),  @sHDRSeries smallint,  @cHRDOrigTrxSource char(13),  @cReferenceNumber char(25),  @iCursorError int,  @iStatus int,  @iError int  select  @O_iErrorState = 0,  @TRUE  = 1,  @FALSE  = 0,  @iStatus = 0  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_cBatchNumber is NULL or  @I_cBatchSource is NULL  begin  select @O_iErrorState = 20985  break  end    declare  TransWork INSENSITIVE  cursor for select  JRNENTRY,  OrigDTASeries,  DTAControlNum,  DTA_Index,  DTATRXType,  RCTRXSEQ,  SERIES,  ORTRXSRC  from  GL10000  where  BACHNUMB = @I_cBatchNumber  and BCHSOURC = @I_cBatchSource   open TransWork   select @iCursorError = @@cursor_rows   if @iCursorError = 0  begin  deallocate TransWork  end   else   begin  fetch next from   TransWork  into  @iJournalEntry,  @sDTASeries,  @vDTAControlNumber,  @nDTAIndex,  @sDTATrxType,  @nHDRRecurringTrxSeq,  @sHDRSeries,  @cHRDOrigTrxSource   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 20986  break  end   if @sDTASeries = 0  begin  exec @iStatus = dtaGetFinancialRef  @nDTAIndex,  @FALSE,  0,  @cReferenceNumber output,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   delete   DTA10200  where  DTASERIES = 2   and DTAREF = @cReferenceNumber   delete   DTA10100  where  DTASERIES = 2   and DTAREF = @cReferenceNumber  end   ELSE   begin  if @vDTAControlNumber = ''   begin  exec @iStatus = dtaDeleteSummaryTrxAnalysis  @iJournalEntry,  @nHDRRecurringTrxSeq,  @sHDRSeries,  @nDTAIndex,  @sDTASeries,  @cHRDOrigTrxSource,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   end    ELSE   begin   if @sHDRSeries = 4   select @cReferenceNumber = rtrim(@vDTAControlNumber) +  replicate(' ',(20 - len(@vDTAControlNumber))) +  ltrim(str(0))  ELSE     select @cReferenceNumber = rtrim(@vDTAControlNumber) +  replicate(' ',(20 - len(@vDTAControlNumber))) +  ltrim(str(@sDTATrxType))   delete   DTA10200  where  DTASERIES = @sDTASeries  and DTAREF = @cReferenceNumber   delete   DTA10100  where  DTASERIES = @sDTASeries  and DTAREF = @cReferenceNumber   exec @iStatus = dtaGetFinancialRef  @nDTAIndex,  @FALSE,  0,  @cReferenceNumber output,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   delete   DTA10200  where  DTASERIES = 2   and DTAREF = @cReferenceNumber   delete   DTA10100  where  DTASERIES = 2   and DTAREF = @cReferenceNumber  end    end    fetch next from   TransWork  into  @iJournalEntry,  @sDTASeries,  @vDTAControlNumber,  @nDTAIndex,  @sDTATrxType,  @nHDRRecurringTrxSeq,  @sHDRSeries,  @cHRDOrigTrxSource   end    deallocate TransWork   end   end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[dtaRemoveRecordsForBatch] TO [DYNGRP]
GO