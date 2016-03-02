SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF100002SD] (@Workflow_Name char(51), @Workflow_Version int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WF100002 WHERE Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WF100002 WHERE Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100002SD] TO [DYNGRP]
GO
