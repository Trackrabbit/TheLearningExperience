SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glVerifyJournalEntry]  @I_iJournalEntry        int             = NULL,  @I_sBatchFrequency      smallint        = NULL,  @O_sPostingStatus       smallint        output,   @O_iErrorState          int             output  as  declare   @POSTED int,   @RECURRING_TRX int,   @NEW int,  @VOIDED int,  @lVoided int,  @TRUE int  if      ( (@I_iJournalEntry is NULL)      or  (@I_sBatchFrequency is NULL) ) begin  select @O_iErrorState = 20007  return  end   select  @O_iErrorState = 0,  @O_sPostingStatus = 0  select  @POSTED  = 2,  @RECURRING_TRX = 3,  @NEW  = 0,  @VOIDED  =  1,  @TRUE  = 1  select @O_sPostingStatus = @NEW   select  @lVoided = VOIDED from  GL20000 with (NOLOCK) where  JRNENTRY = @I_iJournalEntry  if @@ROWCOUNT > 0 begin   if @I_sBatchFrequency > 1   begin  select @O_sPostingStatus = @RECURRING_TRX  end  else  begin  if @lVoided = @TRUE  begin  select @O_sPostingStatus = @VOIDED  end  else  begin  select @O_sPostingStatus = @POSTED  end  end end  return    
GO
GRANT EXECUTE ON  [dbo].[glVerifyJournalEntry] TO [DYNGRP]
GO
