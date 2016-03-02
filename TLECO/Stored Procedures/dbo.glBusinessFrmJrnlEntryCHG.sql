SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glBusinessFrmJrnlEntryCHG]  @I_cBusinessFormID      char(15)        = NULL, @I_iJournalEntry                int             = NULL, @O_mQJTotal             numeric(19,5)   = NULL  output, @O_iErrorState          int             = NULL  output as  declare @UNIT_ACCT              int, @UNIT_ALLOC_ACCT        int, @iStatus                int,   @iError int  select          @O_iErrorState = 0, @O_mQJTotal = 0.0  if ( (@I_cBusinessFormID is NULL) or (@I_iJournalEntry is  NULL) ) begin select @O_iErrorState = 20158 return end  exec @iStatus = DYNAMICS..smGetConstantInt  'UNIT_ACCT', @UNIT_ACCT output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin select @iStatus = @iError end  if ( (@iStatus <> 0) or (@O_iErrorState <> 0) ) return(@iStatus)  exec @iStatus = DYNAMICS..smGetConstantInt   'UNIT_ALLOC_ACCT',  @UNIT_ALLOC_ACCT output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin select @iStatus = @iError end  if ( (@iStatus <> 0) or (@O_iErrorState <> 0) ) return(@iStatus)  select @O_mQJTotal = SUM(TRXAMNT) from  GL10101 WORKER,  GL00100 acct where   WORKER.JRNENTRY   = @I_iJournalEntry  and     WORKER.ACTINDX    = acct.ACTINDX  and     acct.ACCTTYPE   <> @UNIT_ACCT  and     acct.ACCTTYPE   <> @UNIT_ALLOC_ACCT  if @O_mQJTotal is null begin select @O_mQJTotal = 0.0 end  return    
GO
GRANT EXECUTE ON  [dbo].[glBusinessFrmJrnlEntryCHG] TO [DYNGRP]
GO
