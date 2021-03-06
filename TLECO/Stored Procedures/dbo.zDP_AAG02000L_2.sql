SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG02000L_2] (@aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @USERID_RS char(15), @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int, @USERID_RE char(15)) AS  set nocount on IF @aaTrxDimID_RS IS NULL BEGIN SELECT TOP 25  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 ORDER BY aaTrxDimID DESC, aaTrxDimCodeID DESC, USERID DESC END ELSE IF @aaTrxDimID_RS = @aaTrxDimID_RE BEGIN SELECT TOP 25  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 WHERE aaTrxDimID = @aaTrxDimID_RS AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeID DESC, USERID DESC END ELSE BEGIN SELECT TOP 25  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 WHERE aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY aaTrxDimID DESC, aaTrxDimCodeID DESC, USERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG02000L_2] TO [DYNGRP]
GO
