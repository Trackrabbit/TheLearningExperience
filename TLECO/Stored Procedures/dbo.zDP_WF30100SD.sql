SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF30100SD] (@WorkflowInstanceID char(37), @WorkflowStepInstanceID char(37), @Workflow_History_User char(85), @Workflow_Completion_Date datetime, @Workflow_Completion_Time datetime, @Milliseconds smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .WF30100 WHERE WorkflowInstanceID = @WorkflowInstanceID AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND Workflow_History_User = @Workflow_History_User AND Workflow_Completion_Date = @Workflow_Completion_Date AND Workflow_Completion_Time = @Workflow_Completion_Time AND Milliseconds = @Milliseconds AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WF30100 WHERE WorkflowInstanceID = @WorkflowInstanceID AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND Workflow_History_User = @Workflow_History_User AND Workflow_Completion_Date = @Workflow_Completion_Date AND Workflow_Completion_Time = @Workflow_Completion_Time AND Milliseconds = @Milliseconds SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF30100SD] TO [DYNGRP]
GO
