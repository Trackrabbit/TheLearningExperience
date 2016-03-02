SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  view [dbo].[aagMLBudgetAcctBalance] as  select  DISTINCT   AAG00903.aaBudgetID,  AAG00903.aaBudget,  AAG00903.aaBudgetDescr,  AAG00903.aaBudgetTreeID,  AAG00903.YEAR1,   AAG00901.aaTrxDimID,  AAG00901.aaOrder,  AAG00902.aaTrxDimCodeID,  AAG00401.aaTrxDimCode,   AAG00401.aaTrxDimCodeDescr,  AAG00902.aaCodeSequence,  AAG00902.aaLevel,  AAG00902.aaLvlCodeString,   aagMLFiscalView.aaCalMonth,  aagMLFiscalView.aaCalQuarter,  aagMLFiscalView.aaCalHalfYear,  aagMLFiscalView.aaCalYear,   aagMLFiscalView.aaFiscalPeriod,  aagMLFiscalView.aaFiscalQuarter,  aagMLFiscalView.aaFiscalHalfYear,   aagMLFiscalView.aaFiscalYear,  AAG00905.ACTINDX,  AAG00905.Balance,  GL00100.ACCTTYPE,  GL00100.PSTNGTYP,   GL00100.ACTDESCR,  GL00105.ACTNUMST  from  GL00100 join  GL00105 on  GL00100.ACTINDX =  GL00105.ACTINDX   join  AAG00903 join aagMLFiscalView on   AAG00903.YEAR1 =  aagMLFiscalView.aaFiscalYear   join AAG00902 on  AAG00903.aaBudgetTreeID =  AAG00902.aaBudgetTreeID   join  AAG00901 on  AAG00902.aaBudgetTreeID =  AAG00901.aaBudgetTreeID   join AAG00401 on  AAG00901.aaTrxDimID =  AAG00401.aaTrxDimID and   AAG00902.aaTrxDimCodeID =  AAG00401.aaTrxDimCodeID   join AAG00905 on  AAG00903.aaBudgetID =  AAG00905.aaBudgetID and   AAG00902.aaCodeSequence =  AAG00905.aaCodeSequence and   aagMLFiscalView.aaFiscalPeriod =  AAG00905.aaFiscalPeriod on   GL00100.ACTINDX =  AAG00905.ACTINDX where  AAG00902.aaCodeSequence <> 1 and Balance <> 0    
GO
GRANT SELECT ON  [dbo].[aagMLBudgetAcctBalance] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aagMLBudgetAcctBalance] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aagMLBudgetAcctBalance] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aagMLBudgetAcctBalance] TO [DYNGRP]
GO
