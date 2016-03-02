SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create PROCEDURE [dbo].[aagBudgetAccountRollDownOne] (  @USERID CHAR(15),  @WINTYPE INTEGER ,  @CMPANYID INTEGER ,  @Percentage NUMERIC(19,5) ,   @ACTINDX INTEGER ,  @Type INTEGER ,   @Parts NUMERIC(19,5) ,   @IncOB INTEGER ,  @Result INTEGER OUTPUT )  AS  BEGIN   DECLARE @aaFiscalPeriodTable TABLE  (  PERIODDT DATETIME,   aaFiscalPeriod INTEGER   )  DECLARE @aaBudgetID INTEGER ,  @aaActualPriliminary INTEGER ,  @nCount   INTEGER ,  @aaFiscalPeriod INTEGER ,  @aaParCodeSequence INTEGER ,   @aaBudgetTreeID INTEGER ,  @aaSetAmount NUMERIC(19,5) ,  @aaAmtQty INTEGER ,  @aaCodeSequence  INTEGER ,  @aaPstType INTEGER ,  @aaAcctType INTEGER ,  @PercenTotal NUMERIC(19,5) ,  @MAXACTINDX INTEGER ,  @nParts NUMERIC(19,5) ,  @nAccCount INTEGER ,  @TEMPACTINDX INTEGER ,  @nPercentage NUMERIC(19,5) ,  @TempVal NUMERIC(19,5),   @PeriodDate DATETIME  SELECT @nAccCount = COUNT (*)   FROM #temp_ACTINDX   WHERE ACTINDX IN   (SELECT ACTINDX FROM GL00100 WHERE PSTNGTYP = 0 )  SELECT @TEMPACTINDX = MAX(ACTINDX) FROM  #temp_ACTINDX   IF @nAccCount = 0   SELECT @MAXACTINDX = MAX(ACTINDX) FROM  #temp_ACTINDX  ELSE  BEGIN  SELECT @MAXACTINDX = MAX(ACTINDX)   FROM #temp_ACTINDX   WHERE ACTINDX IN (SELECT ACTINDX FROM GL00100 WHERE PSTNGTYP = 0 )  END   SELECT @aaPstType = PSTNGTYP FROM GL00100 WHERE ACTINDX = @ACTINDX  SELECT @aaAcctType = ACCTTYPE FROM GL00100 WHERE ACTINDX = @ACTINDX  SELECT @aaCodeSequence = aaCodeSequence,   @aaBudgetID = aaBudgetID,   @aaActualPriliminary = aaActualPriliminary,   @aaAmtQty = aaAmtQty   FROM AAG00906   WHERE USERID = @USERID AND   WINTYPE = @WINTYPE AND   CMPANYID = @CMPANYID  SELECT DISTINCT @aaBudgetTreeID = aaBudgetTreeID   FROM AAG00903   WHERE aaBudgetID = @aaBudgetID  DELETE FROM AAG00905   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary = @aaActualPriliminary AND   ACTINDX = @ACTINDX  EXEC aagCreateInitialBudgetEntryAcc  INSERT INTO @aaFiscalPeriodTable  SELECT PERIODDT, aaFiscalPeriod   FROM AAG00905   WHERE aaBudgetID = @aaBudgetID AND   aaActualPriliminary = @aaActualPriliminary AND   aaCodeSequence = @aaCodeSequence AND   ACTINDX = @ACTINDX  ORDER BY PERIODDT  SELECT @PercenTotal = SUM (Percentage) FROM #temp_ACTINDX   IF @Type <> 1  SET @PercenTotal =100.00  WHILE ( 1 = 1 )  BEGIN  SELECT @nCount = COUNT (*) FROM @aaFiscalPeriodTable  IF @nCount <= 0   BREAK    SELECT TOP 1 @PeriodDate = PERIODDT, @aaFiscalPeriod = aaFiscalPeriod from @aaFiscalPeriodTable  IF @Type = 1  BEGIN  IF ( @aaFiscalPeriod = 0 )   BEGIN  IF ( @IncOB = 1 ) AND ( @aaPstType = 0 )  BEGIN  SELECT @TempVal = SUM (Percentage)   FROM #temp_ACTINDX   WHERE ACTINDX IN   (SELECT ACTINDX FROM GL00100 WHERE PSTNGTYP = 0 )  SET @nPercentage = ( @Percentage / @TempVal ) * 100.00  SELECT @aaSetAmount =   (SELECT CASE @aaAmtQty WHEN 0 THEN Balance * ( @nPercentage / 100.00 )   ELSE QUANTITY * ( @nPercentage / 100.00 ) END   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod AND  aaActualPriliminary = @aaActualPriliminary)  END  ELSE  SET @aaSetAmount = 0.00  END  ELSE  BEGIN  SELECT @aaSetAmount =   (SELECT CASE @aaAmtQty WHEN 0 THEN Balance * ( @Percentage / 100.00 )   ELSE QUANTITY * ( @Percentage / 100.00 ) END   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod and   aaActualPriliminary = @aaActualPriliminary)  END  END  ELSE  BEGIN  IF ( @aaFiscalPeriod = 0 )   BEGIN  IF ( @IncOB = 1 ) AND ( @aaPstType = 0 )  BEGIN  SELECT @nParts = COUNT(*)   FROM #temp_ACTINDX   WHERE ACTINDX IN   (SELECT ACTINDX FROM GL00100 WHERE PSTNGTYP = 0)  SELECT @aaSetAmount =   (SELECT CASE @aaAmtQty WHEN 0 THEN ( Balance / @nParts )   ELSE ( QUANTITY / @nParts ) END   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod and   aaActualPriliminary = @aaActualPriliminary)  END  ELSE  SET @aaSetAmount = 0.00  END  ELSE  BEGIN  SELECT @aaSetAmount =   (SELECT CASE @aaAmtQty WHEN 0 THEN ( Balance / @Parts )   ELSE ( QUANTITY / @Parts ) END   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod and   aaActualPriliminary = @aaActualPriliminary)  END  END   SET @aaSetAmount = ROUND (@aaSetAmount, 2)   UPDATE AAG00905   SET Balance = @aaSetAmount   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary = @aaActualPriliminary AND   PERIODDT = @PeriodDate AND  aaFiscalPeriod = @aaFiscalPeriod AND   ACTINDX = @ACTINDX  DELETE FROM @aaFiscalPeriodTable where PERIODDT = @PeriodDate AND aaFiscalPeriod = @aaFiscalPeriod   END    IF ( @TEMPACTINDX = @ACTINDX ) AND  (@Type <> 1)  EXEC aagAdjustRollDownFractionsAcc @aaBudgetID, @aaCodeSequence, @PercenTotal, @aaActualPriliminary, @MAXACTINDX, @aaAcctType, @IncOB   SELECT @Result = dbo.aagValidateBudgetNode(0)  RETURN @Result END     
GO
GRANT EXECUTE ON  [dbo].[aagBudgetAccountRollDownOne] TO [DYNGRP]
GO