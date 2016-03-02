SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WFI10003SI] (@WorkflowStepInstanceID char(37), @Workflow_Step_Name char(51), @WorkflowInstanceID char(37), @Workflow_Name char(51), @Workflow_Version int, @WF_Step_Description char(101), @Workflow_Step_Status smallint, @Workflow_Step_Sequence int, @Workflow_Step_Type smallint, @Workflow_Step_Order smallint, @Workflow_Step_Condition smallint, @Workflow_Step_Conditions char(37), @WF_Step_Predecessor char(51), @Workflow_Step_Assign_To char(37), @EmailMessageID char(25), @Workflow_Step_Send_Email tinyint, @Workflow_Step_Time_Limit smallint, @WF_Step_Time_Limit_UofM smallint, @WF_Step_Completion_Polic smallint, @WF_Apply_WF_Calendar tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WFI10003 (WorkflowStepInstanceID, Workflow_Step_Name, WorkflowInstanceID, Workflow_Name, Workflow_Version, WF_Step_Description, Workflow_Step_Status, Workflow_Step_Sequence, Workflow_Step_Type, Workflow_Step_Order, Workflow_Step_Condition, Workflow_Step_Conditions, WF_Step_Predecessor, Workflow_Step_Assign_To, EmailMessageID, Workflow_Step_Send_Email, Workflow_Step_Time_Limit, WF_Step_Time_Limit_UofM, WF_Step_Completion_Polic, WF_Apply_WF_Calendar, NOTEINDX) VALUES ( @WorkflowStepInstanceID, @Workflow_Step_Name, @WorkflowInstanceID, @Workflow_Name, @Workflow_Version, @WF_Step_Description, @Workflow_Step_Status, @Workflow_Step_Sequence, @Workflow_Step_Type, @Workflow_Step_Order, @Workflow_Step_Condition, @Workflow_Step_Conditions, @WF_Step_Predecessor, @Workflow_Step_Assign_To, @EmailMessageID, @Workflow_Step_Send_Email, @Workflow_Step_Time_Limit, @WF_Step_Time_Limit_UofM, @WF_Step_Completion_Polic, @WF_Apply_WF_Calendar, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WFI10003SI] TO [DYNGRP]
GO
