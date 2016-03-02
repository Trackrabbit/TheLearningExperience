SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600102SS_2] (@BSSI_Ground_Lease_Prefix char(5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu, DEX_ROW_ID FROM .B4600102 WHERE BSSI_Ground_Lease_Prefix = @BSSI_Ground_Lease_Prefix ORDER BY BSSI_Ground_Lease_Prefix ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600102SS_2] TO [DYNGRP]
GO
