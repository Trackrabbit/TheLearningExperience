SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[wfGetUserAssignedTaskForDocument]( @Workflow_Type_Name char(51), @WfBusObjKey char(201),   @WorkflowTaskAssignedTo char(85), @fIsUserWFManager tinyint) RETURNS char(37) AS BEGIN  declare @WorkflowInstanceID char(37), @WorkflowStepInstanceID char(37)   if (select top 1 Workflow_Name from WF100002 where Workflow_Type_Name=@Workflow_Type_Name and ACTIVE=1)<>''  begin  select @WorkflowInstanceID=(select top 1 WorkflowInstanceID from WFI10002 where WfBusObjKey=@WfBusObjKey   and Workflow_Type_Name=@Workflow_Type_Name)   select @WorkflowInstanceID=isnull(@WorkflowInstanceID,'')    if @fIsUserWFManager>0  begin  select @WorkflowStepInstanceID=(select top 1 WorkflowStepInstanceID from WFI10004 where WorkflowInstanceID=@WorkflowInstanceID   and Workflow_Action_Date=''   order by Workflow_Due_Date, Workflow_Due_Time,WF_Step_Predecessor, Workflow_Step_Sequence)   end  else  begin  select @WorkflowStepInstanceID=(select top 1 WorkflowStepInstanceID from WFI10004 where WorkflowInstanceID=@WorkflowInstanceID   and UPPER(WorkflowTaskAssignedTo)=UPPER(@WorkflowTaskAssignedTo) and Workflow_Action_Date=''   order by Workflow_Due_Date, Workflow_Due_Time,WF_Step_Predecessor, Workflow_Step_Sequence)   end  end  else  begin  select @WorkflowStepInstanceID=''  end   select @WorkflowStepInstanceID=isnull(@WorkflowStepInstanceID,'')   return @WorkflowStepInstanceID  END   
GO
GRANT EXECUTE ON  [dbo].[wfGetUserAssignedTaskForDocument] TO [DYNGRP]
GO
