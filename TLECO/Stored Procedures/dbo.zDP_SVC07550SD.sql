SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07550SD] (@SVC_Item_Image_Folder char(61), @MAPPRLOC char(61), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC07550 WHERE SVC_Item_Image_Folder = @SVC_Item_Image_Folder AND MAPPRLOC = @MAPPRLOC AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC07550 WHERE SVC_Item_Image_Folder = @SVC_Item_Image_Folder AND MAPPRLOC = @MAPPRLOC SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07550SD] TO [DYNGRP]
GO
