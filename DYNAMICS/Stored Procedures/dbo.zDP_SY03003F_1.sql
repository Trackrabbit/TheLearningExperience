SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY03003F_1] (@ACTNUMBR_1_RS char(9), @ACTNUMBR_2_RS char(9), @ACTNUMBR_3_RS char(9), @ACTNUMBR_4_RS char(9), @ACTNUMBR_5_RS char(9), @ACTNUMBR_1_RE char(9), @ACTNUMBR_2_RE char(9), @ACTNUMBR_3_RE char(9), @ACTNUMBR_4_RE char(9), @ACTNUMBR_5_RE char(9)) AS  set nocount on IF @ACTNUMBR_1_RS IS NULL BEGIN SELECT TOP 25  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, DEX_ROW_ID FROM .SY03003 ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, ACTNUMBR_5 ASC END ELSE IF @ACTNUMBR_1_RS = @ACTNUMBR_1_RE BEGIN SELECT TOP 25  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, DEX_ROW_ID FROM .SY03003 WHERE ACTNUMBR_1 = @ACTNUMBR_1_RS AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND ACTNUMBR_5 BETWEEN @ACTNUMBR_5_RS AND @ACTNUMBR_5_RE ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, ACTNUMBR_5 ASC END ELSE BEGIN SELECT TOP 25  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, DEX_ROW_ID FROM .SY03003 WHERE ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND ACTNUMBR_5 BETWEEN @ACTNUMBR_5_RS AND @ACTNUMBR_5_RE ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, ACTNUMBR_5 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03003F_1] TO [DYNGRP]
GO
