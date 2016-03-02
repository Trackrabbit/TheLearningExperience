SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601150L_1] (@BSSI_GroundTypeID_RS char(31), @BSSI_GroundTypeID_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_GroundTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601150 ORDER BY BSSI_GroundTypeID DESC END ELSE IF @BSSI_GroundTypeID_RS = @BSSI_GroundTypeID_RE BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601150 WHERE BSSI_GroundTypeID = @BSSI_GroundTypeID_RS ORDER BY BSSI_GroundTypeID DESC END ELSE BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601150 WHERE BSSI_GroundTypeID BETWEEN @BSSI_GroundTypeID_RS AND @BSSI_GroundTypeID_RE ORDER BY BSSI_GroundTypeID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601150L_1] TO [DYNGRP]
GO
