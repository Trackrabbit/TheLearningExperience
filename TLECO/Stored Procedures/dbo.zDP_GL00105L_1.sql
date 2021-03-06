SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00105L_1] (@ACTINDX_RS int, @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMST, DEX_ROW_ID FROM .GL00105 ORDER BY ACTINDX DESC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMST, DEX_ROW_ID FROM .GL00105 WHERE ACTINDX = @ACTINDX_RS ORDER BY ACTINDX DESC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMST, DEX_ROW_ID FROM .GL00105 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY ACTINDX DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00105L_1] TO [DYNGRP]
GO
