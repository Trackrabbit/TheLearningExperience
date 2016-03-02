SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glDeleteTaxWorkForJournal]  @iJournalEntry int   = NULL,   @iRecurTrxSeq numeric(19,5)  = NULL as  declare  @lTrxStarted tinyint,  @lControlLoop tinyint,  @lReturnStatus int,  @lSqlError int  select @lReturnStatus = 0  if @@trancount = 0 begin  select @lTrxStarted = 1  begin transaction end  while (@lControlLoop is NULL) begin  select @lControlLoop = 1  delete  GL10300  where  JRNENTRY = @iJournalEntry  and  RCTRXSEQ = @iRecurTrxSeq   select @lSqlError = @@error  if @lSqlError <> 0  begin  select @lReturnStatus = @lSqlError  break  end end  return(@lReturnStatus)   
GO
GRANT EXECUTE ON  [dbo].[glDeleteTaxWorkForJournal] TO [DYNGRP]
GO
