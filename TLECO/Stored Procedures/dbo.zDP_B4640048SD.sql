SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640048SD] (@LOCNCODE char(11), @BSSI_Meter_Number char(25), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4640048 WHERE LOCNCODE = @LOCNCODE AND BSSI_Meter_Number = @BSSI_Meter_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4640048 WHERE LOCNCODE = @LOCNCODE AND BSSI_Meter_Number = @BSSI_Meter_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640048SD] TO [DYNGRP]
GO
