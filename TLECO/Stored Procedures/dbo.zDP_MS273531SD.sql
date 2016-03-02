SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273531SD] (@MSO_Last_Settled_Time datetime, @MSO_Last_Settled_Date datetime, @MSO_EngineGUID char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273531 WHERE MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_EngineGUID = @MSO_EngineGUID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273531 WHERE MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_EngineGUID = @MSO_EngineGUID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273531SD] TO [DYNGRP]
GO
