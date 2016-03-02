SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900510SD] (@USERID char(15), @BSSI_ImportID char(15), @BSSI_ChargeID char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B2900510 WHERE USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID AND BSSI_ChargeID = @BSSI_ChargeID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B2900510 WHERE USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID AND BSSI_ChargeID = @BSSI_ChargeID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900510SD] TO [DYNGRP]
GO
