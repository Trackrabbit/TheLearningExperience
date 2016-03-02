SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfGetNavListFields]  @WorkflowInstanceID char(37),  @Workflow_User char(85),  @Workflow_Type_Name char(51),  @WfBusObjKey char(201),  @Workflow_Name char(51) OUTPUT,  @WorkflowStepInstanceID char(37) OUTPUT,  @Workflow_Step_Type smallint OUTPUT,  @Workflow_Due_Date datetime OUTPUT,   @Workflow_Due_Time datetime OUTPUT,  @Workflow_Approver char(85) OUTPUT,  @Workflow_Originator char(85) OUTPUT,  @Workflow_Error int OUTPUT  AS  BEGIN SET NOCOUNT ON   declare @number_of_assignees int  declare @is_user_assigned_task tinyint  declare @WorkflowTaskAssignedTo char(85)  declare @Workflow_Step_Name char(51)  declare @Workflow_Status smallint   select @WorkflowInstanceID=UPPER(@WorkflowInstanceID)  select @Workflow_User=UPPER(@Workflow_User)  select @Workflow_Status=Workflow_Status, @Workflow_Name=Workflow_Name,   @Workflow_Originator=Workflow_Originator from WFI10002 where UPPER(WorkflowInstanceID)=@WorkflowInstanceID  select @Workflow_Error=0   create table #doc_steps_table  (Workflow_User char(85), WorkflowInstanceID char(37),  WorkflowStepInstanceID char(37), Workflow_Step_Type smallint,  Workflow_Name char(51), Workflow_Step_Name char(51),  WF_Step_Predecessor char(51), Workflow_Step_Sequence int,  Workflow_Task_Assigned tinyint, Number_of_Assignees int,   Workflow_Due_Date datetime, Workflow_Due_Time datetime,  WorkflowTaskAssignedTo char(85), Workflow_Type_Name char(51),   Workflow_Originator char(85), WfBusObjKey char(201))   if @Workflow_Status in (5,6,7)  begin  select @Workflow_Name=isnull(@Workflow_Name,''),   @WorkflowStepInstanceID=isnull(@WorkflowStepInstanceID,''),  @Workflow_Due_Date=isnull(@Workflow_Due_Date,''),   @Workflow_Due_Time=isnull(@Workflow_Due_Time,''),  @Workflow_Approver=isnull(@WorkflowTaskAssignedTo,''),  @Workflow_Originator=isnull(@Workflow_Originator,'')   end  else  begin  insert into #doc_steps_table   select @Workflow_User as Workflow_User,  @WorkflowInstanceID as WorkflowInstanceID,  a.WorkflowStepInstanceID as WorkflowStepInstanceID,  a.Workflow_Step_Type as Workflow_Step_Type,  a.Workflow_Name as Workflow_Name,  a.Workflow_Step_Name as Workflow_Step_Name,  a.WF_Step_Predecessor as WF_Step_Predecessor,   a.Workflow_Step_Sequence as Workflow_Step_Sequence,  0 as Workflow_Task_Assigned, 0 as Number_of_Assignees,  '' as Workflow_Due_Date, '' as Workflow_Due_Time, '' as WorkflowTaskAssignedTo,  @Workflow_Type_Name as Workflow_Type_Name,   b.Workflow_Originator, @WfBusObjKey as WfBusObjKey  from WFI10003 a,  WFI10002 b  where a.WorkflowInstanceID=b.WorkflowInstanceID and   a.WorkflowInstanceID=@WorkflowInstanceID and a.Workflow_Step_Status=2   declare DOC_STEPS cursor local fast_forward  for  select Workflow_User, WorkflowStepInstanceID, Workflow_Step_Name from #doc_steps_table  open DOC_STEPS  fetch next from DOC_STEPS into @Workflow_User, @WorkflowStepInstanceID, @Workflow_Step_Name  while @@FETCH_STATUS=0  begin  select @is_user_assigned_task=0  select @number_of_assignees=COUNT(WorkflowStepInstanceID) from WFI10004   where WorkflowStepInstanceID=@WorkflowStepInstanceID and Workflow_Action_Date=''   if (select COUNT(WorkflowStepInstanceID) from WFI10004   where WorkflowStepInstanceID=@WorkflowStepInstanceID and Workflow_Action_Date=''  and UPPER(WorkflowTaskAssignedTo)=@Workflow_User)>0  begin  select @is_user_assigned_task=1  end   if @number_of_assignees>0  begin  if @number_of_assignees=1  begin  select top 1 @Workflow_Due_Date=Workflow_Due_Date,@Workflow_Due_Time=Workflow_Due_Time,  @WorkflowTaskAssignedTo=WorkflowTaskAssignedTo from WFI10004  where WorkflowStepInstanceID=@WorkflowStepInstanceID  end  else  begin  select top 1 @Workflow_Due_Date=Workflow_Due_Date,@Workflow_Due_Time=Workflow_Due_Time  from WFI10004  where WorkflowStepInstanceID=@WorkflowStepInstanceID   select @WorkflowTaskAssignedTo='Multiple Users'  end  update #doc_steps_table set Workflow_Task_Assigned=@is_user_assigned_task, Number_of_Assignees=@number_of_assignees,  Workflow_Due_Date=@Workflow_Due_Date, Workflow_Due_Time=@Workflow_Due_Time,  WorkflowTaskAssignedTo=@WorkflowTaskAssignedTo  where UPPER(Workflow_User)=@Workflow_User and WorkflowStepInstanceID=@WorkflowStepInstanceID  end  else  begin  update #doc_steps_table set Workflow_Task_Assigned=@is_user_assigned_task, Number_of_Assignees=@number_of_assignees  where UPPER(Workflow_User)=@Workflow_User and WorkflowStepInstanceID=@WorkflowStepInstanceID  end   fetch next from DOC_STEPS into @Workflow_User, @WorkflowStepInstanceID, @Workflow_Step_Name  end  close DOC_STEPS  deallocate DOC_STEPS   select top 1 @Workflow_Name=isnull(Workflow_Name,''),   @WorkflowStepInstanceID=isnull(WorkflowStepInstanceID,''),  @Workflow_Step_Type=ISNULL(Workflow_Step_Type,0),  @Workflow_Due_Date=isnull(Workflow_Due_Date,''),   @Workflow_Due_Time=isnull(Workflow_Due_Time,''),  @Workflow_Approver=isnull(WorkflowTaskAssignedTo,''),  @Workflow_Originator=isnull(Workflow_Originator,'')   from #doc_steps_table   order by Workflow_User, Workflow_Task_Assigned desc, Workflow_Due_Date, Workflow_Due_Time,  WF_Step_Predecessor, Workflow_Step_Sequence  end  if object_id('tempdb..#doc_steps_table') is not null drop table #doc_steps_table END   
GO
GRANT EXECUTE ON  [dbo].[wfGetNavListFields] TO [DYNGRP]
GO
