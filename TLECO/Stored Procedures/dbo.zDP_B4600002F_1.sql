SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600002F_1] (@BSSI_FloorID_RS char(25), @BSSI_FloorID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_FloorID_RS IS NULL BEGIN SELECT TOP 25  BSSI_FloorID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600002 ORDER BY BSSI_FloorID ASC END ELSE IF @BSSI_FloorID_RS = @BSSI_FloorID_RE BEGIN SELECT TOP 25  BSSI_FloorID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600002 WHERE BSSI_FloorID = @BSSI_FloorID_RS ORDER BY BSSI_FloorID ASC END ELSE BEGIN SELECT TOP 25  BSSI_FloorID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600002 WHERE BSSI_FloorID BETWEEN @BSSI_FloorID_RS AND @BSSI_FloorID_RE ORDER BY BSSI_FloorID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600002F_1] TO [DYNGRP]
GO
