SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     FUNCTION [dbo].[aagBudgetEntryGetBudgetPeriodValue] (  @aaFiscalPeriod INTEGER,  @PeriodDate DATETIME )  RETURNS NUMERIC (19,5) AS BEGIN  DECLARE @aaBudgetID INTEGER DECLARE @aaCodeSequence INTEGER DECLARE @aaActualPriliminary INTEGER DECLARE @aaAmtQty INTEGER DECLARE @ACTINDX INTEGER DECLARE @Balance NUMERIC (19,5) DECLARE @USERID CHAR(15)  DECLARE @WINTYPE INTEGER  DECLARE @CMPANYID INTEGER   SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 1  SELECT @CMPANYID = dbo.aagGetCompanyID()  SELECT @aaBudgetID = aaBudgetID,  @aaCodeSequence = aaCodeSequence,  @aaActualPriliminary = aaActualPriliminary,  @aaAmtQty = aaAmtQty,  @ACTINDX = ACTINDX  FROM AAG00906  WHERE USERID = @USERID AND  WINTYPE = @WINTYPE  AND  CMPANYID = @CMPANYID   IF @ACTINDX <=0 OR LEN(RTRIM(LTRIM(STR(@ACTINDX)))) = 0 BEGIN  SELECT @Balance = CASE @aaAmtQty  WHEN 0 THEN Balance ELSE  QUANTITY END  FROM AAG00904  WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND  aaActualPriliminary = @aaActualPriliminary AND  aaFiscalPeriod = @aaFiscalPeriod AND PERIODDT = @PeriodDate END ELSE BEGIN  SELECT @Balance = Balance  FROM AAG00905  WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND  aaActualPriliminary = @aaActualPriliminary AND  ACTINDX = @ACTINDX AND  aaFiscalPeriod = @aaFiscalPeriod AND PERIODDT = @PeriodDate  END RETURN @Balance END   
GO
GRANT EXECUTE ON  [dbo].[aagBudgetEntryGetBudgetPeriodValue] TO [DYNGRP]
GO
