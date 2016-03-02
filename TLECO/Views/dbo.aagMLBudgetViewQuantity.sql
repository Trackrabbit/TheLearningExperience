SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   view  [dbo].[aagMLBudgetViewQuantity] as   SELECT 2 AS REPTYPE,   AAG00903.aaBudgetID AS aaBudgetID ,   AAG00903.aaBudget AS aaBudget,   AAG00903.aaBudgetDescr AS aaBudgetDescr,   AAG00903.YEAR1 AS YEAR1,   AAG00902.aaCodeSequence AS aaCodeSequence,   AAG00902.aaLvlCodeString AS aaLvlCodeString,   ISNULL(AAG00904.aaFiscalPeriod, 0) AS aaFiscalPeriod,   ISNULL(AAG00904.QUANTITY, 0) AS Balance,  AAG00902.aaBudgetTreeID AS aaBudgetTreeID  FROM AAG00902 INNER JOIN  AAG00903 ON AAG00902.aaBudgetTreeID = AAG00903.aaBudgetTreeID INNER JOIN  AAG00904 ON AAG00903.aaBudgetID = AAG00904.aaBudgetID AND  AAG00902.aaCodeSequence = AAG00904.aaCodeSequence    
GO
GRANT SELECT ON  [dbo].[aagMLBudgetViewQuantity] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aagMLBudgetViewQuantity] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aagMLBudgetViewQuantity] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aagMLBudgetViewQuantity] TO [DYNGRP]
GO
