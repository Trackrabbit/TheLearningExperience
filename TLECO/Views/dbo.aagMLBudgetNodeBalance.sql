SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE view [dbo].[aagMLBudgetNodeBalance] AS  select  distinct    AAG00903.aaBudgetID,  AAG00903.aaBudget,  AAG00903.aaBudgetDescr,  AAG00903.aaBudgetTreeID,   (case when Based_On = 2 and AAG00903.YEAR1 <> year(AAG00904.PERIODDT) then year(AAG00904.PERIODDT) else AAG00903.YEAR1 end) YEAR1,   AAG00904.Balance,  AAG00904.QUANTITY,  AAG00901.aaTrxDimID, AAG00901.aaOrder, AAG00902.aaTrxDimCodeID,  AAG00401.aaTrxDimCode,   AAG00401.aaTrxDimCodeDescr,AAG00902.aaCodeSequence,AAG00902.aaLevel,  AAG00902.aaLvlCodeString,  aagMLFiscalView.aaCalMonth,   aagMLFiscalView.aaCalQuarter,  aagMLFiscalView.aaCalHalfYear,  (case when Based_On = 2 and AAG00903.YEAR1 <> year(AAG00904.PERIODDT)  then year(AAG00904.PERIODDT) else aagMLFiscalView.aaCalYear end) aaCalYear,  aagMLFiscalView.aaFiscalPeriod,   aagMLFiscalView.aaFiscalQuarter,  aagMLFiscalView.aaFiscalHalfYear, aagMLFiscalView.aaFiscalYear  from    AAG00903   join  aagMLFiscalView on  AAG00903.YEAR1 =  aagMLFiscalView.aaFiscalYear   join AAG00904 on  AAG00903.aaBudgetID =  AAG00904.aaBudgetID and   aagMLFiscalView.aaFiscalPeriod =  AAG00904.aaFiscalPeriod   join AAG00902 on  AAG00904.aaCodeSequence =  AAG00902.aaCodeSequence and   AAG00903.aaBudgetTreeID =  AAG00902.aaBudgetTreeID   join AAG00901 on  AAG00902.aaBudgetTreeID =  AAG00901.aaBudgetTreeID   join AAG00401 on  AAG00901.aaTrxDimID =  AAG00401.aaTrxDimID and   AAG00902.aaTrxDimCodeID =  AAG00401.aaTrxDimCodeID where   ( AAG00904.aaCodeSequence <> 1) and (AAG00904.aaFiscalPeriod <> 0)and   (AAG00904.Balance + AAG00904.QUANTITY <> 0)    
GO
GRANT SELECT ON  [dbo].[aagMLBudgetNodeBalance] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aagMLBudgetNodeBalance] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aagMLBudgetNodeBalance] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aagMLBudgetNodeBalance] TO [DYNGRP]
GO
