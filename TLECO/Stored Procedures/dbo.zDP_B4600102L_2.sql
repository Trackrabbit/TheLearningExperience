SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600102L_2] (@BSSI_Ground_Lease_Prefix_RS char(5), @BSSI_Ground_Lease_Prefix_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Prefix_RS IS NULL BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 ORDER BY BSSI_Ground_Lease_Prefix DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Ground_Lease_Prefix_RS = @BSSI_Ground_Lease_Prefix_RE BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 WHERE BSSI_Ground_Lease_Prefix = @BSSI_Ground_Lease_Prefix_RS ORDER BY BSSI_Ground_Lease_Prefix DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 WHERE BSSI_Ground_Lease_Prefix BETWEEN @BSSI_Ground_Lease_Prefix_RS AND @BSSI_Ground_Lease_Prefix_RE ORDER BY BSSI_Ground_Lease_Prefix DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600102L_2] TO [DYNGRP]
GO
