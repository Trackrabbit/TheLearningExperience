SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE        FUNCTION [dbo].[aagGetAccountsForBudgets] () RETURNS @TempTable TABLE  ( ACTINDX INTEGER  ,  ACTNUMST CHAR(129) , ACTDESCR CHAR(50) , ACCTTYPE INTEGER  , DEX_ROW_ID INTEGER ) AS BEGIN  DECLARE @aaTrxDimCountAct INTEGER DECLARE @aaTrxDimCountAva INTEGER DECLARE @aaAcctClassID INTEGER DECLARE @aaBudgetTreeID  INTEGER DECLARE @aaCodeSequence INTEGER DECLARE @Temp INTEGER DECLARE @aaParCodeSequence INTEGER DECLARE @aaBudgetID INTEGER DECLARE @aaAcctClass TABLE ( aaAcctClassID INTEGER  ) DECLARE @aaAmtQty   INTEGER  DECLARE @USERID CHAR(15) DECLARE @WINTYPE INTEGER DECLARE @CMPANYID INTEGER SELECT @USERID  = SYSTEM_USER SELECT TOP 1 @WINTYPE=WINTYPE from AAG00906 order by DEX_ROW_ID desc SELECT @CMPANYID = dbo.aagGetCompanyID()  SELECT @aaBudgetID = A.aaBudgetID, @aaBudgetTreeID = aaBudgetTreeID,  @aaCodeSequence = B.aaCodeSequence,  @aaAmtQty = aaAmtQty FROM AAG00903 A INNER JOIN AAG00906 B ON  A.aaBudgetID = B.aaBudgetID AND B.USERID = @USERID AND WINTYPE = @WINTYPE AND  CMPANYID = @CMPANYID  SELECT @Temp = COUNT (*) FROM AAG00902 WHERE aaLevel = 1 and aaBudgetTreeID = @aaBudgetTreeID  and aaCodeSequence = @aaCodeSequence IF @Temp > 0 BEGIN  INSERT INTO @aaAcctClass SELECT aaAcctClassID FROM AAG00201 SELECT @aaTrxDimCountAct = COUNT( aaTrxDimID ) FROM AAG00901 WHERE  aaBudgetTreeID = @aaBudgetTreeID WHILE (1 = 1)  BEGIN SELECT TOP 1 @aaAcctClassID = aaAcctClassID FROM @aaAcctClass  IF (NOT EXISTS(SELECT * FROM @aaAcctClass)) BEGIN BREAK END  SELECT @aaTrxDimCountAva = COUNT(*) FROM AAG00202 where aaAcctClassID = @aaAcctClassID  and  aaTrxDimID in (SELECT aaTrxDimID FROM AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID) IF @aaTrxDimCountAct <= @aaTrxDimCountAva BEGIN INSERT INTO @TempTable  SELECT  A.ACTINDX, C.ACTNUMST, B.ACTDESCR, B.ACCTTYPE, B.DEX_ROW_ID FROM AAG00200 A INNER JOIN GL00100 B ON A.ACTINDX = B.ACTINDX  INNER JOIN GL00105 C ON A.ACTINDX = C.ACTINDX WHERE aaAcctClassID = @aaAcctClassID  END DELETE FROM @aaAcctClass WHERE aaAcctClassID = (SELECT TOP 1 aaAcctClassID FROM @aaAcctClass) END END ELSE BEGIN SELECT TOP 1 @aaParCodeSequence = aaCodeSequence FROM AAG00902 WHERE  aaTrxDimCodeID =(SELECT DISTINCT aaTrxDimParCodeID FROM AAG00902  WHERE aaCodeSequence = @aaCodeSequence AND aaBudgetTreeID = @aaBudgetTreeID)AND  aaBudgetTreeID = @aaBudgetTreeID AND aaCodeSequence < @aaCodeSequence ORDER BY aaCodeSequence DESC INSERT INTO @TempTable  SELECT  A.ACTINDX, B.ACTNUMST, A.ACTDESCR, A.ACCTTYPE, A.DEX_ROW_ID FROM GL00100 A INNER JOIN GL00105 B ON A.ACTINDX = B.ACTINDX WHERE A.ACTINDX IN  (SELECT DISTINCT ACTINDX FROM AAG00905  WHERE aaCodeSequence = @aaParCodeSequence AND aaBudgetID = @aaBudgetID) END RETURN END     
GO
GRANT SELECT ON  [dbo].[aagGetAccountsForBudgets] TO [DYNGRP]
GO