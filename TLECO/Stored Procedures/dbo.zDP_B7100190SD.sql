SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100190SD] (@SALSTERR char(15), @BSSI_Location_Segment char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7100190 WHERE SALSTERR = @SALSTERR AND BSSI_Location_Segment = @BSSI_Location_Segment AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7100190 WHERE SALSTERR = @SALSTERR AND BSSI_Location_Segment = @BSSI_Location_Segment SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100190SD] TO [DYNGRP]
GO
