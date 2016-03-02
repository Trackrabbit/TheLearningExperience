SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCreatePriliminaryData] (  @aaBudgetID int ) AS   DELETE FROM AAG00904  WHERE aaBudgetID = @aaBudgetID AND   aaActualPriliminary = 1  DELETE FROM AAG00905  WHERE aaBudgetID = @aaBudgetID AND   aaActualPriliminary = 1   INSERT INTO AAG00904  SELECT aaBudgetID,  aaCodeSequence,  PERIODDT,   aaFiscalPeriod,  aaActualPriliminary = 1,   Balance,  QUANTITY, (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=ISNULL((SELECT  top 1 DATE1 from AAG00500 WHERE DATE1 =AAG00904.PERIODDT),DATEADD(MONTH, 1, AAG00904.PERIODDT))),  getutcdate()  FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaActualPriliminary = 0   INSERT INTO AAG00905  SELECT aaBudgetID,  aaCodeSequence,  ACTINDX,  PERIODDT,   aaFiscalPeriod,  aaActualPriliminary = 1,   0,  Balance, (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=ISNULL((SELECT  top 1 DATE1 from AAG00500 WHERE DATE1 =AAG00905.PERIODDT),DATEADD(MONTH, 1, AAG00905.PERIODDT))) AS YEAR1   FROM AAG00905   WHERE aaBudgetID = @aaBudgetID AND   aaActualPriliminary = 0    
GO
GRANT EXECUTE ON  [dbo].[aagCreatePriliminaryData] TO [DYNGRP]
GO
