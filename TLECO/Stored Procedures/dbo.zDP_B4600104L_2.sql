SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600104L_2] (@BSSI_GroundLeaseTypeID_RS char(31), @BSSI_Ground_Lease_Prefix_RS char(5), @BSSI_GroundLeaseTypeID_RE char(31), @BSSI_Ground_Lease_Prefix_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_GroundLeaseTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_GroundLeaseTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600104 ORDER BY BSSI_GroundLeaseTypeID DESC, BSSI_Ground_Lease_Prefix DESC END ELSE IF @BSSI_GroundLeaseTypeID_RS = @BSSI_GroundLeaseTypeID_RE BEGIN SELECT TOP 25  BSSI_GroundLeaseTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600104 WHERE BSSI_GroundLeaseTypeID = @BSSI_GroundLeaseTypeID_RS AND BSSI_Ground_Lease_Prefix BETWEEN @BSSI_Ground_Lease_Prefix_RS AND @BSSI_Ground_Lease_Prefix_RE ORDER BY BSSI_GroundLeaseTypeID DESC, BSSI_Ground_Lease_Prefix DESC END ELSE BEGIN SELECT TOP 25  BSSI_GroundLeaseTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600104 WHERE BSSI_GroundLeaseTypeID BETWEEN @BSSI_GroundLeaseTypeID_RS AND @BSSI_GroundLeaseTypeID_RE AND BSSI_Ground_Lease_Prefix BETWEEN @BSSI_Ground_Lease_Prefix_RS AND @BSSI_Ground_Lease_Prefix_RE ORDER BY BSSI_GroundLeaseTypeID DESC, BSSI_Ground_Lease_Prefix DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600104L_2] TO [DYNGRP]
GO
