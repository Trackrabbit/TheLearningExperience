SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  view [dbo].[aagMLBudgetViewActBalance] as   SELECT 3 AS REPTYPE,   AAG00903.aaBudgetID AS aaBudgetID ,   AAG00903.aaBudget AS aaBudget,   AAG00903.aaBudgetDescr AS aaBudgetDescr,   AAG00903.YEAR1 AS YEAR1,   AAG00902.aaCodeSequence AS aaCodeSequence,   AAG00902.aaLvlCodeString AS aaLvlCodeString,   ISNULL(AAG00905.aaFiscalPeriod, 0) AS aaFiscalPeriod,   ISNULL(AAG00905.Balance, 0) AS Balance,  ISNULL(AAG00905.ACTINDX,0) AS ACTINDX,   AAG00902.aaBudgetTreeID AS aaBudgetTreeID  FROM AAG00902 INNER JOIN  AAG00903 ON AAG00902.aaBudgetTreeID = AAG00903.aaBudgetTreeID INNER JOIN  AAG00905 ON AAG00903.aaBudgetID = AAG00905.aaBudgetID AND  AAG00902.aaCodeSequence = AAG00905.aaCodeSequence     
GO
GRANT SELECT ON  [dbo].[aagMLBudgetViewActBalance] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aagMLBudgetViewActBalance] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aagMLBudgetViewActBalance] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aagMLBudgetViewActBalance] TO [DYNGRP]
GO
