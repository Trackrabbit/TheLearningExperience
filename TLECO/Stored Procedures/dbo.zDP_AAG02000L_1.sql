SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG02000L_1] (@USERID_RS char(15), @aaTrxDimID_RS int, @aaTrxDimCodeID_RS int, @USERID_RE char(15), @aaTrxDimID_RE int, @aaTrxDimCodeID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 ORDER BY USERID DESC, aaTrxDimID DESC, aaTrxDimCodeID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 WHERE USERID = @USERID_RS AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE ORDER BY USERID DESC, aaTrxDimID DESC, aaTrxDimCodeID DESC END ELSE BEGIN SELECT TOP 25  USERID, aaTrxDimID, aaTrxDimCodeID, aaView, aaEdit, aaDistribute, aaAdjust, aaBudgetView, aaBudgetAssign, DEX_ROW_ID FROM .AAG02000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE AND aaTrxDimCodeID BETWEEN @aaTrxDimCodeID_RS AND @aaTrxDimCodeID_RE ORDER BY USERID DESC, aaTrxDimID DESC, aaTrxDimCodeID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG02000L_1] TO [DYNGRP]
GO
