SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273508SD] (@MSO_InstanceGUID char(101), @MSO_SegmentNUM int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273508 WHERE MSO_InstanceGUID = @MSO_InstanceGUID AND MSO_SegmentNUM = @MSO_SegmentNUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273508 WHERE MSO_InstanceGUID = @MSO_InstanceGUID AND MSO_SegmentNUM = @MSO_SegmentNUM SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273508SD] TO [DYNGRP]
GO
