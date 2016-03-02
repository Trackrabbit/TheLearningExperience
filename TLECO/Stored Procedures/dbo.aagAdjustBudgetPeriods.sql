SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagAdjustBudgetPeriods] (  @nBudgetID INT,   @nStartDate DATETIME,   @nEndDate DATETIME,   @nBudTreeID INT ) AS  BEGIN  DECLARE @TempPeriodBalances TABLE  (  aaBudgetID INTEGER,   aaCodeSequence INTEGER,   PERIODDT DATETIME,   aaFiscalPeriod INTEGER,   aaActualPriliminary INTEGER,   Balance NUMERIC(19, 5),   QUANTITY NUMERIC(19, 5),  YEAR1 SMALLINT  )  DECLARE @TempPeriodAccountBalances TABLE  (  aaBudgetID INTEGER,   aaCodeSequence INTEGER,   ACTINDX INTEGER,   PERIODDT DATETIME,   aaFiscalPeriod INTEGER,   aaActualPriliminary INTEGER,   aaRange INTEGER,   Balance NUMERIC(19, 5),  YEAR1 SMALLINT  )   INSERT INTO @TempPeriodBalances  SELECT aaBudgetID, aaCodeSequence, PERIODDT, aaFiscalPeriod, aaActualPriliminary, Balance, QUANTITY, YEAR1   FROM AAG00904  WHERE aaBudgetID = @nBudgetID   IF @@ERROR <> 0  RETURN @@ERROR   DELETE FROM AAG00904 WHERE aaBudgetID = @nBudgetID   EXEC aagCreateInitialBudgetEntry  @nStartDate,   @nEndDate,   @nBudgetID,   @nBudTreeID   UPDATE AAG00904  SET aaActualPriliminary = B.aaActualPriliminary, Balance = B.Balance, QUANTITY = B.QUANTITY  FROM AAG00904 A, @TempPeriodBalances B  WHERE  A.aaBudgetID = @nBudgetID AND  A.aaBudgetID = B.aaBudgetID AND  A.aaCodeSequence = B.aaCodeSequence AND  A.aaFiscalPeriod = B.aaFiscalPeriod AND  (A.PERIODDT = B.PERIODDT OR  A.aaFiscalPeriod = 0)   IF @@ERROR <> 0  RETURN @@ERROR   IF EXISTS(SELECT aaBudgetID FROM AAG00905 WHERE aaBudgetID = @nBudgetID)  BEGIN  INSERT INTO @TempPeriodAccountBalances  SELECT aaBudgetID, aaCodeSequence, ACTINDX, PERIODDT, aaFiscalPeriod, aaActualPriliminary, aaRange, Balance, YEAR1  FROM AAG00905  WHERE aaBudgetID = @nBudgetID   IF @@ERROR <> 0  RETURN @@ERROR   DELETE FROM AAG00905 WHERE aaBudgetID = @nBudgetID   INSERT INTO AAG00905  SELECT   B.aaBudgetID,   B.aaCodeSequence,   B.ACTINDX,   A.PERIODDT,   A.aaFiscalPeriod,   B.aaActualPriliminary,   B.aaRange,   B.Balance,  A.YEAR1  FROM  AAG00904 A JOIN @TempPeriodAccountBalances B ON  A.aaBudgetID = B.aaBudgetID AND  A.aaCodeSequence = B.aaCodeSequence AND  A.PERIODDT = B.PERIODDT AND  A.aaFiscalPeriod = B.aaFiscalPeriod  WHERE  A.aaCodeSequence = B.aaCodeSequence AND  A.aaBudgetID = B.aaBudgetID AND  B.aaBudgetID = @nBudgetID   IF @@ERROR <> 0  RETURN @@ERROR   INSERT INTO AAG00905  SELECT DISTINCT B.aaBudgetID,   B.aaCodeSequence,   B.ACTINDX,   A.PERIODDT,   A.aaFiscalPeriod,   B.aaActualPriliminary,   B.aaRange,   0 AS Balance,  A.YEAR1  FROM AAG00904 A, AAG00905 B  WHERE   A.PERIODDT NOT IN (SELECT DISTINCT PERIODDT FROM AAG00905 WHERE aaBudgetID = @nBudgetID) AND  A.aaBudgetID = B.aaBudgetID AND  A.aaCodeSequence = B.aaCodeSequence   IF @@ERROR <> 0  RETURN @@ERROR  END END    
GO
GRANT EXECUTE ON  [dbo].[aagAdjustBudgetPeriods] TO [DYNGRP]
GO
