SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[aagGetAccountsForRanges] ( ) RETURNS @TempAccountRange TABLE ( ACTINDX INT  , ACTNUMST  CHAR (129) , ACTDESCR  CHAR (51) , PRCNTAGE FLOAT  , DEX_ROW_ID INTEGER ) AS BEGIN DECLARE @aaFromValue INTEGER DECLARE @aaToValue INTEGER DECLARE @aaRangeType INTEGER DECLARE @ACTNUMST1 CHAR(129) DECLARE @ACTNUMST2 CHAR(129) DECLARE @SGMTNUMB INTEGER DECLARE @aaAccountClass1  CHAR(15) DECLARE @aaAccountClass2  CHAR(15) DECLARE @aaBudgetID INTEGER DECLARE @aaCodeSequence  INTEGER DECLARE @aaActualPriliminary INTEGER DECLARE @aaAmtQty INTEGER DECLARE @USERID CHAR(15)  DECLARE @WINTYPE INTEGER  DECLARE @CMPANYID INTEGER  SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 1  SELECT @CMPANYID = dbo.aagGetCompanyID() SELECT @aaFromValue = aaFromValue, @aaToValue = aaToValue, @aaRangeType = aaRangeType, @aaBudgetID = aaBudgetID, @aaCodeSequence = aaCodeSequence, @aaActualPriliminary = aaActualPriliminary, @aaAmtQty = aaAmtQty FROM AAG00906 WHERE USERID = @USERID AND WINTYPE = @WINTYPE AND CMPANYID = @CMPANYID IF @aaRangeType = 0 BEGIN INSERT INTO @TempAccountRange  SELECT DISTINCT A.ACTINDX, B.ACTNUMST, C.ACTDESCR, PRCNTAGE = (SELECT SUM(ISNULL(Balance,0)) FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary AND ACTINDX = A.ACTINDX), B.DEX_ROW_ID FROM AAG00905 A INNER JOIN GL00105 B ON A.ACTINDX = B.ACTINDX INNER JOIN GL00100 C ON A.ACTINDX = C.ACTINDX WHERE A.aaBudgetID = @aaBudgetID AND A.aaCodeSequence = @aaCodeSequence AND A.aaActualPriliminary = @aaActualPriliminary AND C.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END IF @aaRangeType = 1 BEGIN SELECT @ACTNUMST1 = ACTNUMST FROM GL00105 WHERE ACTINDX = @aaFromValue SELECT @ACTNUMST2 = ACTNUMST FROM GL00105 WHERE ACTINDX = @aaToValue INSERT INTO @TempAccountRange  SELECT A.ACTINDX, A.ACTNUMST, B.ACTDESCR, 0.00 AS PRCNTAGE, A.DEX_ROW_ID FROM GL00105 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX INNER JOIN AAG00200V C ON A.ACTINDX = C.ACTINDX WHERE A.ACTNUMST BETWEEN @ACTNUMST1 AND @ACTNUMST2 AND B.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END IF @aaRangeType = 3 BEGIN SELECT @aaAccountClass1 = aaAccountClass FROM AAG00201 WHERE aaAcctClassID = @aaFromValue SELECT @aaAccountClass2 = aaAccountClass FROM AAG00201 WHERE aaAcctClassID = @aaToValue INSERT INTO @TempAccountRange  SELECT B.ACTINDX, E.ACTNUMST, C.ACTDESCR, 0.00 AS PRCNTAGE, B.DEX_ROW_ID FROM AAG00201 A INNER JOIN AAG00200 B ON A.aaAcctClassID = B.aaAcctClassID INNER JOIN GL00100 C ON B.ACTINDX = C.ACTINDX INNER JOIN AAG00200V D ON B.ACTINDX = D.ACTINDX INNER JOIN GL00105 E ON B.ACTINDX = E.ACTINDX  WHERE A.aaAccountClass BETWEEN @aaAccountClass1 AND @aaAccountClass2 AND C.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END IF @aaRangeType > 3 BEGIN SET @SGMTNUMB = @aaRangeType - 3  IF @SGMTNUMB = 1 BEGIN INSERT INTO @TempAccountRange SELECT A.ACTINDX, A.ACTNUMST, B.ACTDESCR, 0.00 AS PRCNTAGE, A.DEX_ROW_ID FROM GL00105 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX INNER JOIN AAG00200V C ON A.ACTINDX = C.ACTINDX WHERE A.ACTNUMBR_1 BETWEEN @aaFromValue AND @aaToValue AND B.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END  IF @SGMTNUMB = 2 BEGIN INSERT INTO @TempAccountRange SELECT A.ACTINDX, A.ACTNUMST, B.ACTDESCR, 0.00 AS PRCNTAGE, A.DEX_ROW_ID FROM GL00105 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX INNER JOIN AAG00200V C ON A.ACTINDX = C.ACTINDX WHERE A.ACTNUMBR_2 BETWEEN @aaFromValue AND @aaToValue AND B.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END  IF @SGMTNUMB = 3 BEGIN INSERT INTO @TempAccountRange SELECT A.ACTINDX, A.ACTNUMST, B.ACTDESCR, 0.00 AS PRCNTAGE, A.DEX_ROW_ID FROM GL00105 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX INNER JOIN AAG00200V C ON A.ACTINDX = C.ACTINDX WHERE A.ACTNUMBR_3 BETWEEN @aaFromValue AND @aaToValue AND B.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END  IF @SGMTNUMB = 4 BEGIN INSERT INTO @TempAccountRange SELECT A.ACTINDX, A.ACTNUMST, B.ACTDESCR, 0.00 AS PRCNTAGE, A.DEX_ROW_ID FROM GL00105 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX INNER JOIN AAG00200V C ON A.ACTINDX = C.ACTINDX WHERE A.ACTNUMBR_4 BETWEEN @aaFromValue AND @aaToValue AND B.ACCTTYPE = (SELECT CASE @aaAmtQty WHEN 0 THEN 1 WHEN 1 THEN 2 END) RETURN END  END RETURN END
GO
GRANT SELECT ON  [dbo].[aagGetAccountsForRanges] TO [DYNGRP]
GO
