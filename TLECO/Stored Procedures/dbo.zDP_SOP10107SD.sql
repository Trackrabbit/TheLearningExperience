SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10107SD] (@SOPNUMBE char(21), @SOPTYPE smallint, @Tracking_Number char(41), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SOP10107 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND Tracking_Number = @Tracking_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SOP10107 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND Tracking_Number = @Tracking_Number SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10107SD] TO [DYNGRP]
GO
