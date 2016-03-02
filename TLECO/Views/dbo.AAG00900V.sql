SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[AAG00900V] AS SELECT A.aaFiscalPeriod    ,  A.Balance AS RootBalance   ,  A.QUANTITY AS RootQty    ,  FirstBalance  = ( SELECT SUM(Balance) FROM AAG00904 WHERE aaBudgetID = A.aaBudgetID AND  aaCodeSequence IN  (  SELECT aaCodeSequence FROM AAG00902 WHERE aaBudgetTreeID = C.aaBudgetTreeID  AND aaLevel = 1 ) AND aaFiscalPeriod = A.aaFiscalPeriod AND  aaActualPriliminary = D.aaActualPriliminary ), FirstQty = ( SELECT sum(QUANTITY) FROM AAG00904 WHERE aaBudgetID = A.aaBudgetID AND  aaCodeSequence IN  (  SELECT aaCodeSequence FROM AAG00902 WHERE aaBudgetTreeID = C.aaBudgetTreeID  AND aaLevel = 1 )AND aaFiscalPeriod = A.aaFiscalPeriod and aaActualPriliminary = D.aaActualPriliminary ) , DiffAmount  = ( SELECT A.Balance - sum(Balance) FROM AAG00904 WHERE aaBudgetID = A.aaBudgetID AND  aaCodeSequence IN  (  SELECT aaCodeSequence FROM AAG00902 WHERE aaBudgetTreeID = C.aaBudgetTreeID  AND aaLevel = 1 ) AND aaFiscalPeriod = A.aaFiscalPeriod AND  aaActualPriliminary = D.aaActualPriliminary ), DiffQty  = ( SELECT A.QUANTITY - SUM(QUANTITY) FROM AAG00904 WHERE aaBudgetID = A.aaBudgetID AND  aaCodeSequence IN  (  SELECT aaCodeSequence FROM AAG00902 WHERE aaBudgetTreeID = C.aaBudgetTreeID  AND aaLevel = 1 ) AND aaFiscalPeriod = A.aaFiscalPeriod AND  aaActualPriliminary = D.aaActualPriliminary ), A.DEX_ROW_ID FROM AAG00904 A INNER JOIN AAG00902 B ON A.aaCodeSequence = B.aaCodeSequence  INNER JOIN AAG00903 C ON A.aaBudgetID = C.aaBudgetID INNER JOIN AAG00906 D ON A.aaBudgetID = D.aaBudgetID WHERE A.aaCodeSequence = 1 AND  B.aaLevel IN (0,1) AND B.aaBudgetTreeID = C.aaBudgetTreeID AND D.USERID = SYSTEM_USER AND D.CMPANYID = (SELECT dbo.aagGetCompanyID()) AND  D.WINTYPE = 1 AND A.aaActualPriliminary = D.aaActualPriliminary AND A.aaBudgetID = D.aaBudgetID    
GO
GRANT SELECT ON  [dbo].[AAG00900V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00900V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00900V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00900V] TO [DYNGRP]
GO
