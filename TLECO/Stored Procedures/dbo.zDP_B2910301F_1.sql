SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910301F_1] (@RMDTYPAL_RS smallint, @RMDNUMWK_RS char(17), @RMDTYPAL_RE smallint, @RMDNUMWK_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @RMDTYPAL_RS IS NULL BEGIN SELECT TOP 25  RMDTYPAL, RMDNUMWK, BS29_Leasing_Schedule, DEX_ROW_ID FROM .B2910301 ORDER BY RMDTYPAL ASC, RMDNUMWK ASC END ELSE IF @RMDTYPAL_RS = @RMDTYPAL_RE BEGIN SELECT TOP 25  RMDTYPAL, RMDNUMWK, BS29_Leasing_Schedule, DEX_ROW_ID FROM .B2910301 WHERE RMDTYPAL = @RMDTYPAL_RS AND RMDNUMWK BETWEEN @RMDNUMWK_RS AND @RMDNUMWK_RE ORDER BY RMDTYPAL ASC, RMDNUMWK ASC END ELSE BEGIN SELECT TOP 25  RMDTYPAL, RMDNUMWK, BS29_Leasing_Schedule, DEX_ROW_ID FROM .B2910301 WHERE RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND RMDNUMWK BETWEEN @RMDNUMWK_RS AND @RMDNUMWK_RE ORDER BY RMDTYPAL ASC, RMDNUMWK ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910301F_1] TO [DYNGRP]
GO
