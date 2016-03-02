SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCreateInitialBudgetEntry]  (  @nStartDate DATETIME,   @nEndDate DATETIME,  @aaBudgetID INT  ,  @aaBudgetTreeID INT  ) AS  BEGIN  SET NOCOUNT ON  DECLARE @TEMP_FISCALPERIOD TABLE   (  PERIODDT DATETIME,  aaFiscalperiod int,  YEAR1 smallint  )  DECLARE @StartYear INTEGER   SELECT @StartYear = SY40101.YEAR1  FROM SY40101  WHERE FSTFSCDY <= @nStartDate AND  LSTFSCDY >= @nStartDate   IF NOT EXISTS( SELECT aaBudgetID FROM AAG00904 WHERE aaBudgetID = @aaBudgetID)  BEGIN  INSERT INTO @TEMP_FISCALPERIOD   SELECT PERIODDT, PERIODID, YEAR1  FROM SY40100  WHERE  PERDENDT >= @nStartDate AND  PERIODDT <= @nEndDate AND  FORIGIN = 1 AND  PERIODID <> 0 OR  FORIGIN = 1 AND  PERIODID = 0 AND  YEAR1 = @StartYear  INSERT INTO AAG00904  SELECT @aaBudgetID AS aaBudgetID,  aaCodeSequence,  PERIODDT,   aaFiscalperiod,  0 AS aaAmtQty,  0 AS aaActualPriliminary,  0.00 AS Balance,  ISNULL((SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=ISNULL((SELECT  top 1 DATE1 from AAG00500 WHERE DATE1 =A.PERIODDT),DATEADD(MONTH, 1, A.PERIODDT))),A.YEAR1) AS YEAR1 ,  getutcdate()  FROM @TEMP_FISCALPERIOD A, AAG00902 B   WHERE B.aaBudgetTreeID = @aaBudgetTreeID  ORDER BY aaCodeSequence, PERIODDT, aaFiscalperiod  END  SET NOCOUNT OFF END    
GO
GRANT EXECUTE ON  [dbo].[aagCreateInitialBudgetEntry] TO [DYNGRP]
GO