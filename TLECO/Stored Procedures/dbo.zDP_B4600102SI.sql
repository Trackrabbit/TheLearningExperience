SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600102SI] (@BSSI_GroundTypeID char(31), @BSSI_Ground_Lease_Prefix char(5), @BSSI_Ground_Lease_NextNu char(11), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600102 (BSSI_GroundTypeID, BSSI_Ground_Lease_Prefix, BSSI_Ground_Lease_NextNu) VALUES ( @BSSI_GroundTypeID, @BSSI_Ground_Lease_Prefix, @BSSI_Ground_Lease_NextNu) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600102SI] TO [DYNGRP]
GO
