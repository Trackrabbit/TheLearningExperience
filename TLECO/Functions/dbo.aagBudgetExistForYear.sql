SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[aagBudgetExistForYear] (  @FiscalYear INT ) returns  smallint as Begin  declare @BudgetExist smallint  declare @FiscalCount int    select @FiscalCount = NUMOFPER + 1   from SY40101 where SY40101.YEAR1 = @FiscalYear   if exists(SElect top 1 1 from   (select count(aaCodeSequence) * @FiscalCount RecCnt, aaBudgetID  from AAG00902 Inner join AAG00903   on AAG00902.aaBudgetTreeID = AAG00903.aaBudgetTreeID   where  AAG00903.YEAR1 = @FiscalYear and   Based_On = 1  Group by aaBudgetID ) A,  (select Count(*) RecCnt, AAG00904.aaBudgetID   from AAG00904 Inner join AAG00903   on AAG00904.aaBudgetID = AAG00903.aaBudgetID   where  AAG00903.YEAR1 = @FiscalYear and   Based_On = 1  Group by AAG00904.aaBudgetID) B  where A.aaBudgetID = B.aaBudgetID and   A.RecCnt <> B.RecCnt)   select @BudgetExist = 1  else   select @BudgetExist = 0   return @BudgetExist End    
GO
GRANT EXECUTE ON  [dbo].[aagBudgetExistForYear] TO [DYNGRP]
GO
