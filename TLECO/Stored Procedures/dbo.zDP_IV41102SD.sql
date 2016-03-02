SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41102SD] (@Landed_Cost_Group_ID char(15), @Landed_Cost_ID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV41102 WHERE Landed_Cost_Group_ID = @Landed_Cost_Group_ID AND Landed_Cost_ID = @Landed_Cost_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV41102 WHERE Landed_Cost_Group_ID = @Landed_Cost_Group_ID AND Landed_Cost_ID = @Landed_Cost_ID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41102SD] TO [DYNGRP]
GO
