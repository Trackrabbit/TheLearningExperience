SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icIsMCForDestinationCompany]  @I_iJournalEntry int  = NULL,  @I_cOrigFunctionalCurrency char(15) = NULL,  @O_tIsMC tinyint  = NULL output,  @O_iErrorState           int             = NULL  output  as   declare  @TRUE            tinyint,   @cExecString char(250),  @cIntercompanyID char(5),  @cDatabaseName char(11)  select  @O_tIsMC  = 0,  @O_iErrorState  = 0  if  @I_iJournalEntry is NULL or  @I_cOrigFunctionalCurrency is NULL begin  select @O_iErrorState = 20953  return  end   select @TRUE = 1 declare   CompanyCursor INSENSITIVE cursor for select distinct  dist.INTERID,  path.DBNAME from   GL10001 dist with (NOLOCK),  DYNAMICS..SY01500 comp,  DYNAMICS..SY02100 path where   dist.JRNENTRY = @I_iJournalEntry and dist.INTERID = comp.INTERID  and comp.CMPANYID = path.CMPANYID open CompanyCursor if @@cursor_rows <>  0 begin     fetch next from  CompanyCursor  into  @cIntercompanyID,   @cDatabaseName   while (@@fetch_status <> -1)  begin  select @cExecString =   'select 1 from ' + rtrim(@cDatabaseName) + '..MC40000 where FUNLCURR <> ''' + rtrim(@I_cOrigFunctionalCurrency) + ''''   exec (@cExecString)    if @@rowcount = 1  begin  select @O_tIsMC = @TRUE  deallocate CompanyCursor  return  end   fetch next from  CompanyCursor  into  @cIntercompanyID,   @cDatabaseName  end   end   deallocate CompanyCursor  return   
GO
GRANT EXECUTE ON  [dbo].[icIsMCForDestinationCompany] TO [DYNGRP]
GO
