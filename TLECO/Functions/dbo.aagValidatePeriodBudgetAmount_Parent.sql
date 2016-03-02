SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  FUNCTION [dbo].[aagValidatePeriodBudgetAmount_Parent] ( @aaFiscalPeriod SMALLINT, @aaParCodeSeq INTEGER,  @PeriodDate DATETIME )  RETURNS INT AS BEGIN DECLARE  @aaBudgetID INTEGER ,@aaCodeSequence INTEGER , @ACTINDX INTEGER ,@aaActualPriliminary INTEGER , @NETCHNG TINYINT ,@YEAR1 SMALLINT, @aaRange SMALLINT,@STR30 CHAR(31), @ParentAmount FLOAT ,@ChildrenTotal FLOAT , @NodeAmount FLOAT ,@Result INT , @Temp INTEGER ,@aaBudgetTreeID INT , @NodeValue FLOAT ,@ZAccountValue FLOAT , @aaAmountQty INTEGER ,@aaLevel   INTEGER , @aaCodeNext INTEGER , @USERID CHAR(15), @WINTYPE SMALLINT, @CMPANYID  INTEGER, @RollUp TINYINT  SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 1  SELECT @CMPANYID = dbo.aagGetCompanyID()  SELECT @aaBudgetID = aaBudgetID ,  @aaCodeSequence = aaCodeSequence , @ACTINDX = ACTINDX ,  @aaActualPriliminary = aaActualPriliminary ,  @aaAmountQty = aaAmtQty, @YEAR1 = AAG00906.YEAR1 ,  @aaRange = aaRange,  @NETCHNG = NETCHNG,  @STR30 = STR30 FROM AAG00906  WHERE USERID = @USERID and  WINTYPE = @WINTYPE AND  CMPANYID = @CMPANYID  SELECT @aaBudgetTreeID = aaBudgetTreeID ,@RollUp = aaBudgetRollUp FROM AAG00903  WHERE aaBudgetID = @aaBudgetID  SELECT @aaLevel = aaLevel  FROM AAG00902  WHERE aaCodeSequence = @aaCodeSequence AND  aaBudgetTreeID = @aaBudgetTreeID  SELECT TOP 1 @aaCodeNext = aaCodeSequence  FROM AAG00902  WHERE aaLevel = @aaLevel AND  aaCodeSequence > @aaCodeSequence  IF @ACTINDX <=0 OR LEN(RTRIM(LTRIM(STR(@ACTINDX)))) = 0 BEGIN  SELECT @ParentAmount = CASE @aaAmountQty WHEN 0 THEN Balance ELSE QUANTITY END   FROM AAG00904   WHERE aaCodeSequence = @aaParCodeSeq AND   aaFiscalPeriod = @aaFiscalPeriod AND   aaBudgetID = @aaBudgetID AND   aaActualPriliminary = @aaActualPriliminary AND  PERIODDT = @PeriodDate   SELECT @Temp = aaTrxDimParCodeID   FROM AAG00902   WHERE aaCodeSequence = @aaCodeSequence   SELECT @ChildrenTotal = CASE @aaAmountQty WHEN 0 THEN SUM(Balance) ELSE SUM(QUANTITY) END   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence IN   (SELECT aaCodeSequence FROM dbo.aagGetChildNodes (@aaBudgetTreeID, @aaParCodeSeq)) AND  aaActualPriliminary = @aaActualPriliminary AND  aaFiscalPeriod = @aaFiscalPeriod AND  PERIODDT = @PeriodDate  if @RollUp = 0  BEGIN  IF ( @ParentAmount <= 0 ) AND ( @ChildrenTotal > 0 )  BEGIN  SET @Result =  -1  RETURN @Result  END   IF @ParentAmount = @ChildrenTotal  BEGIN  SET @Result = 0   RETURN @Result  END    IF @ParentAmount > @ChildrenTotal  BEGIN  SET @Result = 1  RETURN @Result  END   IF @ParentAmount < @ChildrenTotal  BEGIN  SET @Result = -2  RETURN @Result  END  END END ELSE IF @aaRange = 0 or LEN(RTRIM(LTRIM(STR(@aaRange)))) = 0 BEGIN  SELECT @ZAccountValue = SUM(Balance)   FROM AAG00905 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX   WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary = @aaActualPriliminary AND  aaFiscalPeriod = @aaFiscalPeriod AND  PERIODDT = @PeriodDate AND   B.ACCTTYPE = (SELECT CASE @aaAmountQty WHEN 0 THEN 1 WHEN 1 THEN 2 END)   SELECT @NodeValue = CASE @aaAmountQty WHEN 0 THEN Balance ELSE QUANTITY END   FROM AAG00904   WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary = @aaActualPriliminary  AND  aaFiscalPeriod = @aaFiscalPeriod AND   PERIODDT = @PeriodDate  if @RollUp = 0  BEGIN  IF @ZAccountValue > @NodeValue   BEGIN   SET @Result = -3  RETURN @Result   END   ELSE  BEGIN  SET @Result = 3  END  END  SELECT @aaLevel = aaLevel   FROM AAG00902   WHERE aaBudgetTreeID = @aaBudgetTreeID AND   aaCodeSequence = @aaCodeSequence    IF @aaLevel = 1  RETURN @Result   SELECT @ParentAmount = ISNULL(SUM(Balance),0)   FROM AAG00905   WHERE aaCodeSequence = @aaParCodeSeq AND   aaFiscalPeriod = @aaFiscalPeriod AND   aaBudgetID = @aaBudgetID AND   aaActualPriliminary = @aaActualPriliminary AND  ACTINDX = @ACTINDX AND   PERIODDT = @PeriodDate   SELECT @aaBudgetTreeID = aaBudgetTreeID   FROM AAG00903   WHERE aaBudgetID = @aaBudgetID   if @RollUp = 0  BEGIN  IF @ParentAmount <= 0 AND ( @ChildrenTotal > 0 )   BEGIN  SET @Result =  -1  RETURN @Result  END  END   SELECT @Temp = aaTrxDimParCodeID   FROM AAG00902   WHERE aaCodeSequence = @aaCodeSequence   SELECT @ChildrenTotal = SUM(Balance)   FROM AAG00905 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX   WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence IN   (SELECT aaCodeSequence FROM dbo.aagGetChildNodes (@aaBudgetTreeID, @aaParCodeSeq)) AND  aaActualPriliminary = @aaActualPriliminary AND  aaFiscalPeriod = @aaFiscalPeriod AND  PERIODDT = @PeriodDate AND  A.ACTINDX = @ACTINDX AND  B.ACCTTYPE = (SELECT CASE @aaAmountQty WHEN 0 THEN 1 WHEN 1 THEN 2 END)   if @RollUp = 0  BEGIN  IF @ParentAmount = @ChildrenTotal  BEGIN  SET @Result = 0   RETURN @Result  END    IF @ParentAmount > @ChildrenTotal  BEGIN  SET @Result = 1  RETURN @Result  END   IF @ParentAmount < @ChildrenTotal  BEGIN  SET @Result = -2  RETURN @Result  END  END END ELSE BEGIN SET @Result = -1000009 END RETURN @Result  END    
GO
GRANT EXECUTE ON  [dbo].[aagValidatePeriodBudgetAmount_Parent] TO [DYNGRP]
GO