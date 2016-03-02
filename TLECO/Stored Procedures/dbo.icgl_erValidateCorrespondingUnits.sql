SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icgl_erValidateCorrespondingUnits]  @I_iJournalEntry int     = NULL,  @O_tValidCUs tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE   tinyint  select   @O_tValidCUs = 0,  @O_iErrorState = 0  if @I_iJournalEntry  is NULL  begin  select @O_iErrorState = 21072  return end   select @TRUE = 1  select   @O_tValidCUs = @TRUE where   not exists(select   1   from   GL10001 with (NOLOCK)  where   JRNENTRY = @I_iJournalEntry  and  CorrespondingUnit <> ''  and  CorrespondingUnit   not in (select   INTERID   from   GL10001 with (NOLOCK)  where   JRNENTRY = @I_iJournalEntry))  return   
GO
GRANT EXECUTE ON  [dbo].[icgl_erValidateCorrespondingUnits] TO [DYNGRP]
GO
