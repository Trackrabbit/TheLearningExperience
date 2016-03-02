SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4609202L_1] (@BSSI_WingID_RS char(25), @BSSI_WingID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_WingID_RS IS NULL BEGIN SELECT TOP 25  BSSI_WingID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609202 ORDER BY BSSI_WingID DESC END ELSE IF @BSSI_WingID_RS = @BSSI_WingID_RE BEGIN SELECT TOP 25  BSSI_WingID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609202 WHERE BSSI_WingID = @BSSI_WingID_RS ORDER BY BSSI_WingID DESC END ELSE BEGIN SELECT TOP 25  BSSI_WingID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609202 WHERE BSSI_WingID BETWEEN @BSSI_WingID_RS AND @BSSI_WingID_RE ORDER BY BSSI_WingID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4609202L_1] TO [DYNGRP]
GO
