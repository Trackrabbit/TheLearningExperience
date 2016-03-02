SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600102F_1] (@BSSI_GroundTypeID_RS char(31), @BSSI_Ground_Lease_Prefix_RS char(5), @BSSI_GroundTypeID_RE char(31), @BSSI_Ground_Lease_Prefix_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_GroundTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 ORDER BY BSSI_GroundTypeID ASC, BSSI_Ground_Lease_Prefix ASC END ELSE IF @BSSI_GroundTypeID_RS = @BSSI_GroundTypeID_RE BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 WHERE BSSI_GroundTypeID = @BSSI_GroundTypeID_RS AND BSSI_Ground_Lease_Prefix BETWEEN @BSSI_Ground_Lease_Prefix_RS AND @BSSI_Ground_Lease_Prefix_RE ORDER BY BSSI_GroundTypeID ASC, BSSI_Ground_Lease_Prefix ASC END ELSE BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 WHERE BSSI_GroundTypeID BETWEEN @BSSI_GroundTypeID_RS AND @BSSI_GroundTypeID_RE AND BSSI_Ground_Lease_Prefix BETWEEN @BSSI_Ground_Lease_Prefix_RS AND @BSSI_Ground_Lease_Prefix_RE ORDER BY BSSI_GroundTypeID ASC, BSSI_Ground_Lease_Prefix ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600102F_1] TO [DYNGRP]
GO
