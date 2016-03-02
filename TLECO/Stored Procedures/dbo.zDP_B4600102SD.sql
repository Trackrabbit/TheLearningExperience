SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600102SD] (@BSSI_GroundTypeID char(31), @BSSI_Ground_Lease_Prefix char(5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4600102 WHERE BSSI_GroundTypeID = @BSSI_GroundTypeID AND BSSI_Ground_Lease_Prefix = @BSSI_Ground_Lease_Prefix AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4600102 WHERE BSSI_GroundTypeID = @BSSI_GroundTypeID AND BSSI_Ground_Lease_Prefix = @BSSI_Ground_Lease_Prefix SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600102SD] TO [DYNGRP]
GO
