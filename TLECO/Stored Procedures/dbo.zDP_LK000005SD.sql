SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000005SD] (@LK_Group char(31), @LK_Link_No int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .LK000005 WHERE LK_Group = @LK_Group AND LK_Link_No = @LK_Link_No AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .LK000005 WHERE LK_Group = @LK_Group AND LK_Link_No = @LK_Link_No SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000005SD] TO [DYNGRP]
GO
