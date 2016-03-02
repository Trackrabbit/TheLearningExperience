SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01990SD] (@ScbGroupType smallint, @ScbOwnerID char(15), @ScbNodeID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY01990 WHERE ScbGroupType = @ScbGroupType AND ScbOwnerID = @ScbOwnerID AND ScbNodeID = @ScbNodeID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY01990 WHERE ScbGroupType = @ScbGroupType AND ScbOwnerID = @ScbOwnerID AND ScbNodeID = @ScbNodeID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01990SD] TO [DYNGRP]
GO
