SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273528SD] (@MSO_BookKey_Globals char(1), @MSO_SaleKey_Globals char(1), @MSO_SwipeKey_Globals char(1), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273528 WHERE MSO_BookKey_Globals = @MSO_BookKey_Globals AND MSO_SaleKey_Globals = @MSO_SaleKey_Globals AND MSO_SwipeKey_Globals = @MSO_SwipeKey_Globals AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273528 WHERE MSO_BookKey_Globals = @MSO_BookKey_Globals AND MSO_SaleKey_Globals = @MSO_SaleKey_Globals AND MSO_SwipeKey_Globals = @MSO_SwipeKey_Globals SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273528SD] TO [DYNGRP]
GO
