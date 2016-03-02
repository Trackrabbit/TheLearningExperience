SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE    FUNCTION [dbo].[aagGetCodesForRollDown]  ( ) RETURNS @TrxDimIDTable TABLE ( aaTrxDimCodeID INTEGER  , aaCodeSequence INTEGER  , aaTrxDimCodeDescr CHAR (51) , PRCNTAGE NUMERIC (19,5) , DEX_ROW_ID INTEGER  ) AS BEGIN  DECLARE @aaCodeSequence INTEGER  , @aaBudgetTreeID INTEGER  , @aaBudgetID INTEGER  , @USERID  CHAR(15) , @WINTYPE INTEGER  , @CMPANYID  INTEGER SELECT @USERID  = SYSTEM_USER SELECT @WINTYPE = 1  SELECT @CMPANYID = dbo.aagGetCompanyID() SELECT @aaCodeSequence = aaCodeSequence, @aaBudgetID = aaBudgetID FROM AAG00906  WHERE USERID = @USERID AND WINTYPE = @WINTYPE AND CMPANYID = @CMPANYID SELECT distinct @aaBudgetTreeID = aaBudgetTreeID from AAG00903 WHERE  aaBudgetID = @aaBudgetID INSERT INTO @TrxDimIDTable  SELECT A.aaTrxDimCodeID, A.aaCodeSequence, B.aaTrxDimCodeDescr, 0.00 as PRCNTAGE,  B.DEX_ROW_ID FROM dbo.aagGetChildNodes(@aaBudgetTreeID, @aaCodeSequence) A INNER JOIN AAG00401 B ON A.aaTrxDimCodeID = B.aaTrxDimCodeID RETURN  END     
GO
GRANT SELECT ON  [dbo].[aagGetCodesForRollDown] TO [DYNGRP]
GO
