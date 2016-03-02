SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG02000SS_1] (@USERID char(15), @aaTrxDimID int, @aaTrxDimCodeID int) AS  set nocount on SELECT TOP 1  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 WHERE USERID = @USERID AND aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID ORDER BY USERID ASC, aaTrxDimID ASC, aaTrxDimCodeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG02000SS_1] TO [DYNGRP]
GO
