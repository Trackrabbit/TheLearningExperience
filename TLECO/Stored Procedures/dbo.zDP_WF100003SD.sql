SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100003SD] (@Workflow_Step_Name char(51), @Workflow_Name char(51), @Workflow_Version int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .WF100003 WHERE Workflow_Step_Name = @Workflow_Step_Name AND Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WF100003 WHERE Workflow_Step_Name = @Workflow_Step_Name AND Workflow_Name = @Workflow_Name AND Workflow_Version = @Workflow_Version SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100003SD] TO [DYNGRP]
GO
