SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10004SI] (@WorkflowInstanceID char(37), @WorkflowStepInstanceID char(37), @WorkflowTaskAssignedTo char(85), @Workflow_Step_Name char(51), @Workflow_Name char(51), @Workflow_Version int, @WF_Step_Description char(101), @Workflow_Action_Date datetime, @Workflow_Action_Time datetime, @Workflow_Due_Date datetime, @Workflow_Due_Time datetime, @Workflow_Step_Sequence int, @Workflow_Step_Type smallint, @Workflow_Step_Order smallint, @WF_Step_Predecessor char(51), @WF_Step_Completion_Polic smallint, @Workflow_Task_Escalated tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WFI10004 (WorkflowInstanceID, WorkflowStepInstanceID, WorkflowTaskAssignedTo, Workflow_Step_Name, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Action_Date, Workflow_Action_Time, Workflow_Due_Date, Workflow_Due_Time, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, WF_Step_Predecessor, WF_Step_Completion_Polic, Workflow_Task_Escalated) VALUES ( @WorkflowInstanceID, @WorkflowStepInstanceID, @WorkflowTaskAssignedTo, @Workflow_Step_Name, @Workflow_Name, @Workflow_Version, @WF_Step_Description, @Workflow_Action_Date, @Workflow_Action_Time, @Workflow_Due_Date, @Workflow_Due_Time, @Workflow_Step_Sequence, @Workflow_Step_Type, @Workflow_Step_Order, @WF_Step_Predecessor, @WF_Step_Completion_Polic, @Workflow_Task_Escalated) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10004SI] TO [DYNGRP]
GO
