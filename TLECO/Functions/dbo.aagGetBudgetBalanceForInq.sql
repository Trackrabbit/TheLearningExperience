SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE FUNCTION [dbo].[aagGetBudgetBalanceForInq]() RETURNS  @TEMPTABLE TABLE ( YEAR1 int, PERIODDT DATETIME,  aaFiscalPeriod int, PERDBLNC NUMERIC(19,5), Actual_Amount numeric(19,5),  DEX_ROW_ID            int IDENTITY(1,1) )  AS  BEGIN DECLARE @aaBudgetID INTEGER , @aaBudgetTreeID INTEGER , @aaCodeSequence INTEGER , @aaNodeCode INTEGER , @aaTrxDimCodeID INTEGER, @ACTINDX INTEGER , @aaActualPriliminary INTEGER , @NETCHNG TINYINT , @YEAR1 SMALLINT, @aaRange SMALLINT, @STR30 CHAR(31), @aaFiscalPeriod INTEGER ,  @aaAmountQty INTEGER , @USERID   CHAR(15), @WINTYPE   SMALLINT, @CMPANYID INTEGER, @COUNT    INTEGER,  @PeriodDate DATETIME,  @FirstFiscalDay DATETIME,  @StartDate DATETIME,  @EndDate DATETIME,  @BasedOn INT  SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 2 SELECT @CMPANYID = dbo.aagGetCompanyID()  SELECT @aaBudgetID = aaBudgetID , @aaCodeSequence = aaCodeSequence ,@aaNodeCode=aaNodeCode, @ACTINDX = ACTINDX , @aaActualPriliminary = aaActualPriliminary ,@aaAmountQty = aaAmtQty,  @YEAR1 = AAG00906.YEAR1 , @aaRange = aaRange, @NETCHNG = NETCHNG, @STR30 = STR30 FROM AAG00906 WHERE USERID = @USERID AND WINTYPE = @WINTYPE AND CMPANYID = @CMPANYID  SELECT @aaBudgetTreeID=aaBudgetTreeID from AAG00903 where aaBudgetID=@aaBudgetID   SELECT @BasedOn = Based_On FROM AAG00903 WHERE aaBudgetID = @aaBudgetID  SELECT @FirstFiscalDay = FSTFSCDY  FROM SY40101 WHERE SY40101.YEAR1 = @YEAR1  SELECT @StartDate = From_Date,  @EndDate = TODATE FROM AAG00903 WHERE aaBudgetID = @aaBudgetID  IF @aaNodeCode=0  begin select @aaTrxDimCodeID=aaTrxDimCodeID from AAG00902 where aaCodeSequence=@aaCodeSequence and aaBudgetTreeID=@aaBudgetTreeID end  IF @ACTINDX <=0  BEGIN  IF @NETCHNG = 0 BEGIN  IF @aaNodeCode<>0 BEGIN IF @ACTINDX < 0 BEGIN INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT, aaFiscalPeriod , (SELECT Balance = CASE @aaAmountQty WHEN 0 THEN SUM(ISNULL(Balance,0))  ELSE SUM(ISNULL(QUANTITY,0)) END  FROM AAG00904 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND  B.aaCodeSequence = @aaCodeSequence AND B.aaActualPriliminary = @aaActualPriliminary) AS PERDBLNC, 0 FROM AAG00904 A WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary ORDER BY PERIODDT  END IF @ACTINDX = 0 BEGIN INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod , (SELECT Balance = SUM(ISNULL(Balance,0))  FROM AAG00905 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND  B.aaCodeSequence = @aaCodeSequence AND exists (select 1 from GL00100   where ACCTTYPE = CASE @aaAmountQty WHEN 0 THEN 1   else 2 end and GL00100.ACTINDX = B.ACTINDX ) AND  B.aaActualPriliminary = @aaActualPriliminary) AS PERDBLNC, 0 FROM AAG00905 A WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND exists (select 1 from GL00100  where ACCTTYPE = CASE @aaAmountQty WHEN 0 THEN 1   else 2 end and GL00100.ACTINDX = A.ACTINDX ) AND  aaActualPriliminary = @aaActualPriliminary GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  END END ELSE BEGIN  IF @ACTINDX < 0 BEGIN INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT, aaFiscalPeriod , (SELECT Balance = CASE @aaAmountQty WHEN 0 THEN SUM(ISNULL(Balance,0))  ELSE SUM(ISNULL(QUANTITY,0)) END  FROM AAG00904 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where B.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND B.aaActualPriliminary = @aaActualPriliminary) AS PERDBLNC, 0 FROM AAG00904 A WHERE aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where A.aaCodeSequence = AAG00902.aaCodeSequence  and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND aaActualPriliminary = @aaActualPriliminary GROUP BY PERIODDT, aaFiscalPeriod ORDER BY PERIODDT  END IF @ACTINDX = 0 BEGIN INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT, aaFiscalPeriod , (SELECT Balance = SUM(ISNULL(Balance,0))  FROM AAG00905 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where B.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND exists (select 1 from GL00100 where ACCTTYPE = CASE @aaAmountQty WHEN 0 THEN 1 else 2 end and GL00100.ACTINDX = B.ACTINDX ) AND  B.aaActualPriliminary = @aaActualPriliminary) AS PERDBLNC, 0 FROM AAG00905 A WHERE aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where A.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND exists (select 1 from GL00100 where ACCTTYPE = CASE @aaAmountQty WHEN 0 THEN 1 else 2 end and GL00100.ACTINDX = A.ACTINDX ) AND  aaActualPriliminary = @aaActualPriliminary GROUP BY PERIODDT, aaFiscalPeriod ORDER BY PERIODDT  END END END ElSE  BEGIN IF @aaNodeCode<>0 BEGIN  IF @ACTINDX < 0 BEGIN INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,Actual_Amount,PERDBLNC)  SELECT PERIODDT,  aaFiscalPeriod, 0, PERDBLNC = CASE @aaAmountQty WHEN 0 THEN ISNULL(Balance,0)   ELSE ISNULL(QUANTITY,0) END  FROM AAG00904 WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary ORDER BY PERIODDT  END  IF @ACTINDX = 0 BEGIN INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,Actual_Amount,PERDBLNC)  SELECT PERIODDT,  aaFiscalPeriod, 0,  PERDBLNC = SUM(ISNULL(Balance,0))  FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary AND exists (select 1 from GL00100 where ACCTTYPE = CASE @aaAmountQty WHEN 0 THEN 1 else 2 end and GL00100.ACTINDX = AAG00905.ACTINDX )  GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  END END  ELSE BEGIN IF @ACTINDX < 0 BEGIN INSERT INTO @TEMPTABLE (PERIODDT,aaFiscalPeriod,Actual_Amount,PERDBLNC) SELECT PERIODDT,  aaFiscalPeriod, 0,  PERDBLNC = CASE @aaAmountQty WHEN 0 THEN ISNULL(SUM(Balance),0)   ELSE SUM(ISNULL(QUANTITY,0)) END FROM AAG00904 WHERE aaBudgetID = @aaBudgetID AND  exists(select 1 from AAG00902 where AAG00904.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND aaActualPriliminary = @aaActualPriliminary GROUP BY PERIODDT, aaFiscalPeriod ORDER BY PERIODDT END  IF @ACTINDX = 0 BEGIN  INSERT INTO @TEMPTABLE (PERIODDT,aaFiscalPeriod,Actual_Amount,PERDBLNC) SELECT PERIODDT,  aaFiscalPeriod, 0,  PERDBLNC = SUM(ISNULL(Balance,0))  FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND  exists(select 1 from AAG00902 where AAG00905.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND aaActualPriliminary = @aaActualPriliminary AND  exists (select 1 from GL00100 where ACCTTYPE = CASE @aaAmountQty WHEN 0 THEN 1 else 2 end and GL00100.ACTINDX = AAG00905.ACTINDX )  GROUP BY PERIODDT, aaFiscalPeriod ORDER BY PERIODDT  END  END   END IF @ACTINDX = 0 BEGIN SELECT @COUNT=COUNT(*) FROM @TEMPTABLE IF @COUNT=0  begin INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,Actual_Amount,PERDBLNC)  SELECT PERIODDT,   aaFiscalPeriod,  0,   PERDBLNC = 0  FROM AAG00904 WHERE aaBudgetID = @aaBudgetID AND   aaCodeSequence = @aaCodeSequence AND  aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  end END END  ELSE IF @aaRange = 0 or LEN(RTRIM(LTRIM(STR(@aaRange)))) = 0 BEGIN IF NOT EXISTS(SELECT 1 FROM AAG00905 WHERE aaBudgetID = @aaBudgetID  AND aaCodeSequence = @aaCodeSequence AND  ACTINDX = @ACTINDX AND aaActualPriliminary = @aaActualPriliminary) BEGIN IF @BasedOn = 1  BEGIN INSERT INTO @TEMPTABLE(YEAR1, PERIODDT, aaFiscalPeriod,PERDBLNC,Actual_Amount) SELECT SY40100.YEAR1,  PERIODDT,  PERIODID, 0.00  AS PERDBLNC, 0.00  FROM SY40100  WHERE SY40100.YEAR1 = @YEAR1 AND FORIGIN = 1 RETURN END ELSE  BEGIN INSERT INTO @TEMPTABLE(SY40100.YEAR1, PERIODDT, aaFiscalPeriod, PERDBLNC,Actual_Amount)  SELECT SY40100.YEAR1,  PERIODDT,  PERIODID,  0 AS PERDBLNC,  0 AS Actual_Amount FROM SY40100 WHERE (FORIGIN = 1 AND PERIODID = 0 AND YEAR1 = @YEAR1) OR (FORIGIN = 1 AND PERIODID <> 0 AND PERIODDT BETWEEN @StartDate AND @EndDate) ORDER BY PERIODDT RETURN  END END  IF @NETCHNG = 0  BEGIN IF @aaNodeCode<>0 INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod, (SELECT SUM(ISNULL(Balance,0))  FROM AAG00905 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND  B.aaCodeSequence = @aaCodeSequence AND B.aaActualPriliminary = @aaActualPriliminary AND  ACTINDX = @ACTINDX) AS PERDBLNC, 0 FROM AAG00905 A WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND ACTINDX = @ACTINDX AND aaActualPriliminary = @aaActualPriliminary  ORDER BY PERIODDT  ELSE INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount) SELECT PERIODDT,  aaFiscalPeriod, (SELECT SUM(ISNULL(Balance,0))  FROM AAG00905 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where B.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND B.aaActualPriliminary = @aaActualPriliminary AND  ACTINDX = @ACTINDX) AS PERDBLNC, 0 FROM AAG00905 A WHERE aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where A.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND ACTINDX = @ACTINDX AND aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod ORDER BY PERIODDT END  ELSE BEGIN IF @aaNodeCode<>0 INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod,  ISNULL(Balance,0)  AS PERDBLNC, 0  FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND  aaCodeSequence = @aaCodeSequence AND ACTINDX = @ACTINDX AND aaActualPriliminary = @aaActualPriliminary  ORDER BY PERIODDT  ELSE INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod,  ISNULL(SUM(Balance),0)  AS PERDBLNC, 0  FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where AAG00905.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND ACTINDX = @ACTINDX AND aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod ORDER BY PERIODDT  END END  ELSE IF @aaRange = 1 or LEN(RTRIM(LTRIM(STR(@aaRange)))) = 1   BEGIN IF @NETCHNG = 0  BEGIN IF @aaNodeCode<>0 INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod, (SELECT SUM(ISNULL(Balance,0))  FROM AAG00904 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND  B.aaCodeSequence = @aaCodeSequence AND B.aaActualPriliminary = @aaActualPriliminary) AS PERDBLNC, 0 FROM AAG00905 A WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  ELSE INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod, (SELECT SUM(ISNULL(Balance,0))  FROM AAG00904 B  WHERE B.PERIODDT <= A.PERIODDT AND B.aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where B.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND B.aaActualPriliminary = @aaActualPriliminary) AS PERDBLNC, 0  FROM AAG00905 A WHERE aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where A.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  END ELSE BEGIN IF @aaNodeCode<>0 INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)  SELECT PERIODDT,  aaFiscalPeriod,  ISNULL(SUM(Balance),0) AS PERDBLNC, 0 FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  ELSE INSERT INTO @TEMPTABLE(PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount) SELECT PERIODDT,  aaFiscalPeriod,  ISNULL(SUM(Balance),0) AS PERDBLNC, 0 FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND exists(select 1 from AAG00902 where AAG00905.aaCodeSequence = AAG00902.aaCodeSequence and aaTrxDimCodeID=@aaTrxDimCodeID and aaBudgetTreeID=@aaBudgetTreeID) AND aaActualPriliminary = @aaActualPriliminary  GROUP BY PERIODDT, aaFiscalPeriod  ORDER BY PERIODDT  END  END RETURN END    
GO
GRANT SELECT ON  [dbo].[aagGetBudgetBalanceForInq] TO [DYNGRP]
GO