SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   view [dbo].[aagMLBudgetViewBalance] as   SELECT 1 AS REPTYPE,   AAG00903.aaBudgetID AS aaBudgetID ,   AAG00903.aaBudget AS aaBudget,   AAG00903.aaBudgetDescr AS aaBudgetDescr,   AAG00903.YEAR1 AS YEAR1,   AAG00902.aaCodeSequence AS aaCodeSequence,   AAG00902.aaLvlCodeString AS aaLvlCodeString,   ISNULL(AAG00904.aaFiscalPeriod, 0) AS aaFiscalPeriod,   AAG00902.aaBudgetTreeID,   AAG00904.Balance AS Balance  FROM  AAG00902 INNER JOIN  AAG00903 ON AAG00902.aaBudgetTreeID = AAG00903.aaBudgetTreeID INNER JOIN  AAG00904 ON AAG00903.aaBudgetID = AAG00904.aaBudgetID AND   AAG00902.aaCodeSequence = AAG00904.aaCodeSequence    
GO
GRANT SELECT ON  [dbo].[aagMLBudgetViewBalance] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aagMLBudgetViewBalance] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aagMLBudgetViewBalance] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aagMLBudgetViewBalance] TO [DYNGRP]
GO
