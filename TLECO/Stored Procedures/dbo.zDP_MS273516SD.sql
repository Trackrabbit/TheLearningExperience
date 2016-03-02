SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273516SD] (@MSO_EngineGUID char(51), @MSO_CheckbookID char(51), @MSO_CardName char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273516 WHERE MSO_EngineGUID = @MSO_EngineGUID AND MSO_CheckbookID = @MSO_CheckbookID AND MSO_CardName = @MSO_CardName AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273516 WHERE MSO_EngineGUID = @MSO_EngineGUID AND MSO_CheckbookID = @MSO_CheckbookID AND MSO_CardName = @MSO_CardName SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273516SD] TO [DYNGRP]
GO
