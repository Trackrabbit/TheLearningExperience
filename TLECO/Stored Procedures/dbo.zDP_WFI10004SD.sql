SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10004SD] (@WorkflowInstanceID char(37), @WorkflowStepInstanceID char(37), @WorkflowTaskAssignedTo char(85), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WFI10004 WHERE WorkflowInstanceID = @WorkflowInstanceID AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND WorkflowTaskAssignedTo = @WorkflowTaskAssignedTo AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WFI10004 WHERE WorkflowInstanceID = @WorkflowInstanceID AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND WorkflowTaskAssignedTo = @WorkflowTaskAssignedTo SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10004SD] TO [DYNGRP]
GO
