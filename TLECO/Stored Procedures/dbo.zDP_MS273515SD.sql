SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273515SD] (@MSO_EngineGUID char(51), @MSO_Last_Settled_Date datetime, @MSO_Last_Settled_Time datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273515 WHERE MSO_EngineGUID = @MSO_EngineGUID AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273515 WHERE MSO_EngineGUID = @MSO_EngineGUID AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_Last_Settled_Time = @MSO_Last_Settled_Time SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273515SD] TO [DYNGRP]
GO
