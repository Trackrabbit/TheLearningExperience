SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG02000SS_2] (@aaTrxDimID int, @aaTrxDimCodeID int, @USERID char(15)) AS  set nocount on SELECT TOP 1  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 WHERE aaTrxDimID = @aaTrxDimID AND aaTrxDimCodeID = @aaTrxDimCodeID AND USERID = @USERID ORDER BY aaTrxDimID ASC, aaTrxDimCodeID ASC, USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG02000SS_2] TO [DYNGRP]
GO
