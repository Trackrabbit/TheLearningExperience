SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100180F_1] (@BSSI_BundleID_RS char(25), @BSSI_BundleID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_BundleID_RS IS NULL BEGIN SELECT TOP 25  BSSI_BundleID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B7100180 ORDER BY BSSI_BundleID ASC END ELSE IF @BSSI_BundleID_RS = @BSSI_BundleID_RE BEGIN SELECT TOP 25  BSSI_BundleID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B7100180 WHERE BSSI_BundleID = @BSSI_BundleID_RS ORDER BY BSSI_BundleID ASC END ELSE BEGIN SELECT TOP 25  BSSI_BundleID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B7100180 WHERE BSSI_BundleID BETWEEN @BSSI_BundleID_RS AND @BSSI_BundleID_RE ORDER BY BSSI_BundleID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100180F_1] TO [DYNGRP]
GO
