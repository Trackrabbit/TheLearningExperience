SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP50SD] (@ASI_Export_Application smallint, @ASI_Export_Name char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ASIEXP50 WHERE ASI_Export_Application = @ASI_Export_Application AND ASI_Export_Name = @ASI_Export_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ASIEXP50 WHERE ASI_Export_Application = @ASI_Export_Application AND ASI_Export_Name = @ASI_Export_Name SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP50SD] TO [DYNGRP]
GO
