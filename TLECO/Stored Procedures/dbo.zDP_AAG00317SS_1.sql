SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00317SS_1] (@USERID char(15), @aaTrxDimCodeID int) AS  set nocount on SELECT TOP 1  USERID, aaTrxDimCodeID, DEX_ROW_ID, aaUDFCodeString FROM .AAG00317 WHERE USERID = @USERID AND aaTrxDimCodeID = @aaTrxDimCodeID ORDER BY USERID ASC, aaTrxDimCodeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00317SS_1] TO [DYNGRP]
GO
