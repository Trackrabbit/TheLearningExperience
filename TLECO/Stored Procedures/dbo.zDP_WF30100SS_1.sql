SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF30100SS_1] (@WorkflowInstanceID char(37), @WorkflowStepInstanceID char(37), @Workflow_History_User char(85), @Workflow_Completion_Date datetime, @Workflow_Completion_Time datetime, @Milliseconds smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  WorkflowInstanceID, WorkflowStepInstanceID, Workflow_History_User, Workflow_Name, Workflow_Step_Name, Workflow_Step_Assign_To, Workflow_Action, Workflow_Due_Date, Workflow_Due_Time, Workflow_Completion_Date, Workflow_Completion_Time, Milliseconds, DEX_ROW_ID, Workflow_Comments FROM .WF30100 WHERE WorkflowInstanceID = @WorkflowInstanceID AND WorkflowStepInstanceID = @WorkflowStepInstanceID AND Workflow_History_User = @Workflow_History_User AND Workflow_Completion_Date = @Workflow_Completion_Date AND Workflow_Completion_Time = @Workflow_Completion_Time AND Milliseconds = @Milliseconds ORDER BY WorkflowInstanceID ASC, WorkflowStepInstanceID ASC, Workflow_History_User ASC, Workflow_Completion_Date ASC, Workflow_Completion_Time ASC, Milliseconds ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF30100SS_1] TO [DYNGRP]
GO
