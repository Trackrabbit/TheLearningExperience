SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icDeleteRoundingAccount]  @I_iJournalEntry int     = NULL,  @O_tRoundingAccountDeleted  tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE tinyint,  @FALSE   tinyint,  @NORMALROUND smallint,  @NOTEDITABLE   smallint  select   @O_tRoundingAccountDeleted  = 0,  @O_iErrorState    = 0  if @I_iJournalEntry  is NULL  begin  select @O_iErrorState = 20922  return end   select  @TRUE  = 1,  @FALSE  = 0,  @NORMALROUND = 2,  @NOTEDITABLE = 256    delete  GL10001   where  JRNENTRY  = @I_iJournalEntry  and  LNESTAT = (@NORMALROUND + @NOTEDITABLE)   if @@rowcount <> 0   select @O_tRoundingAccountDeleted = @TRUE  else  select @O_tRoundingAccountDeleted = @FALSE   return   
GO
GRANT EXECUTE ON  [dbo].[icDeleteRoundingAccount] TO [DYNGRP]
GO
