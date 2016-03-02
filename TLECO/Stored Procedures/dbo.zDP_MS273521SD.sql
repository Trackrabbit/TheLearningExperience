SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273521SD] (@BCHSOURC char(15), @BACHNUMB char(15), @MSO_BatchScheduleType char(101), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273521 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND MSO_BatchScheduleType = @MSO_BatchScheduleType AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273521 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND MSO_BatchScheduleType = @MSO_BatchScheduleType SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273521SD] TO [DYNGRP]
GO
