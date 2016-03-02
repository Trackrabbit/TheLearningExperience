SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfGetCompletedEmailInformation]   @WorkflowInstanceID char(37),  @DocAttachBusObjKey char(200) OUTPUT,  @Document_ID char(50) OUTPUT,  @DocumentDrillDown char(255) OUTPUT,  @Workflow_Managers char(37) OUTPUT,  @Workflow_Originator char(238) OUTPUT,  @Workflow_Status smallint OUTPUT,   @Workflow_Error int OUTPUT AS  BEGIN set NOCOUNT ON   declare @assigned_task_user char(85)  declare @WfBusObjKey char(201),  @tilde_position smallint,  @Workflow_Type_Name char(51)   select @WorkflowInstanceID=UPPER(@WorkflowInstanceID)  select @Workflow_Managers=UPPER(@Workflow_Managers)  select @WfBusObjKey=WfBusObjKey,@Workflow_Type_Name=Workflow_Type_Name,   @Workflow_Originator=Workflow_Originator, @Workflow_Status=Workflow_Status,  @DocumentDrillDown = Document_Drill_Down, @DocAttachBusObjKey = BusObjKey  from WFI10002   where WorkflowInstanceID=@WorkflowInstanceID   select @tilde_position=CHARINDEX('~',@WfBusObjKey)  if @tilde_position>0   begin  select @Document_ID=substring(@WfBusObjKey,1,@tilde_position-1)  end  else   begin  select @Document_ID=@WfBusObjKey  end  select @Workflow_Managers=Workflow_Managers from WF100001 where Workflow_Type_Name = @Workflow_Type_Name  END   
GO
GRANT EXECUTE ON  [dbo].[wfGetCompletedEmailInformation] TO [DYNGRP]
GO
