SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601400N_1] (@BS int, @BSSI_DeedRestrictionID char(25), @BSSI_DeedRestrictionID_RS char(25), @BSSI_DeedRestrictionID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_DeedRestrictionID_RS IS NULL BEGIN SELECT TOP 25  BSSI_DeedRestrictionID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601400 WHERE ( BSSI_DeedRestrictionID > @BSSI_DeedRestrictionID ) ORDER BY BSSI_DeedRestrictionID ASC END ELSE IF @BSSI_DeedRestrictionID_RS = @BSSI_DeedRestrictionID_RE BEGIN SELECT TOP 25  BSSI_DeedRestrictionID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601400 WHERE BSSI_DeedRestrictionID = @BSSI_DeedRestrictionID_RS AND ( BSSI_DeedRestrictionID > @BSSI_DeedRestrictionID ) ORDER BY BSSI_DeedRestrictionID ASC END ELSE BEGIN SELECT TOP 25  BSSI_DeedRestrictionID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601400 WHERE BSSI_DeedRestrictionID BETWEEN @BSSI_DeedRestrictionID_RS AND @BSSI_DeedRestrictionID_RE AND ( BSSI_DeedRestrictionID > @BSSI_DeedRestrictionID ) ORDER BY BSSI_DeedRestrictionID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601400N_1] TO [DYNGRP]
GO
