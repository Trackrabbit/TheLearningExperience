SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5599L_1] (@USERID_RS char(15), @INDXLONG_RS int, @USERID_RE char(15), @INDXLONG_RE int) AS /* 14.00.0084.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, INDXLONG, STRGA255, DEX_ROW_ID, TXTFIELD FROM .NCIC5599 ORDER BY USERID DESC, INDXLONG DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, INDXLONG, STRGA255, DEX_ROW_ID, TXTFIELD FROM .NCIC5599 WHERE USERID = @USERID_RS AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY USERID DESC, INDXLONG DESC END ELSE BEGIN SELECT TOP 25  USERID, INDXLONG, STRGA255, DEX_ROW_ID, TXTFIELD FROM .NCIC5599 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY USERID DESC, INDXLONG DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5599L_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5599L_1] TO [public]
GO
