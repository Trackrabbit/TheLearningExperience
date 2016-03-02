SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfAllowableActions]  @Workflow_Type_Name char(51),  @WfBusObjKey char(201),  @WorkflowInstanceID char(37),  @WorkflowStepInstanceID char(37),  @Workflow_User char(85),  @Workflow_FirstClassWindow tinyint,  @Inquiry_Window tinyint,  @Workflow_Action_1 tinyint=0 OUTPUT,  @Workflow_Action_2 tinyint=0 OUTPUT,  @Workflow_Action_3 tinyint=0 OUTPUT,  @Workflow_Action_4 tinyint=0 OUTPUT,  @Workflow_Action_5 tinyint=0 OUTPUT,  @Workflow_Action_6 tinyint=0 OUTPUT,  @Workflow_Action_7 tinyint=0 OUTPUT,  @Workflow_Action_8 tinyint=0 OUTPUT,  @Workflow_Action_9 tinyint=0 OUTPUT,  @Workflow_Action_10 tinyint=0 OUTPUT,  @Single_Action_Available tinyint=0 OUTPUT,   @Workflow_Error int OUTPUT AS  BEGIN   declare @Workflow_Comments char(2000)  declare @Workflow_Step_Assign_To char(37), @Workflow_Managers char(37)  declare @Workflow_Step_Name char(51), @Workflow_Name char(51), @Workflow_Version int  declare @CMPANYID nvarchar(6), @server_name nvarchar(128), @SystemDB nvarchar(11)  declare @Workflow_Due_Date datetime, @Workflow_Due_Time datetime,  @Workflow_Completion_Date datetime, @Workflow_Completion_Time datetime  declare @Workflow_Require_One_App tinyint, @UserIsManager tinyint,   @UserAssignedTask tinyint, @Workflow_Manually_Delega tinyint, @active_workflow_exists tinyint  declare @Workflow_Status smallint, @Workflow_Step_Type smallint  declare @RequisitionStatus smallint   select @WorkflowInstanceID = UPPER(@WorkflowInstanceID)  select @WorkflowStepInstanceID = UPPER(@WorkflowStepInstanceID)  select @Workflow_User=UPPER(@Workflow_User)   select @SystemDB = (select top 1 DBNAME from SY00100)  select @server_name=@@SERVERNAME   select @CMPANYID=DB_NAME()   select @UserIsManager=0, @UserAssignedTask=0, @Single_Action_Available=0  if @WorkflowInstanceID=''  begin  select @WorkflowInstanceID=WorkflowInstanceID, @Workflow_Step_Type=Workflow_Step_Type,  @Workflow_Step_Name=Workflow_Step_Name   from WFI10003 where WorkflowStepInstanceID=@WorkflowStepInstanceID  end  else  begin  select @Workflow_Step_Type=Workflow_Step_Type, @Workflow_Step_Name=Workflow_Step_Name   from WFI10003 where WorkflowStepInstanceID=@WorkflowStepInstanceID  end   select @Workflow_Manually_Delega=Workflow_Manually_Delega,@Workflow_Status=Workflow_Status,  @Workflow_Name=Workflow_Name, @Workflow_Version=Workflow_Version  from WFI10002 where WorkflowInstanceID=@WorkflowInstanceID  select @Workflow_Status=isnull(@Workflow_Status,0)   if (select COUNT(Workflow_Name) from WF100002 where ACTIVE=1 and Workflow_Type_Name=@Workflow_Type_Name)>0  begin  select @active_workflow_exists=1  if @Workflow_Name=''  begin  select @Workflow_Name=Workflow_Name, @Workflow_Version=Workflow_Version from WF100002 where ACTIVE=1 and Workflow_Type_Name=@Workflow_Type_Name  end  end  else  begin  select @active_workflow_exists=0  end   select top 1 @Workflow_Managers=UPPER(Workflow_Managers) from WF100001 where Workflow_Type_Name = @Workflow_Type_Name   if @Workflow_Managers<>''  and @Inquiry_Window<>1  begin  if @Workflow_Name<>'' and @Workflow_Step_Name<>''  begin  delete from WFI10005 where Workflow_User=@Workflow_User  exec DYNAMICS.dbo.GetAssignedUsers  @Workflow_User,  @Workflow_Managers,  @Workflow_Type_Name,  @Workflow_Name,  @Workflow_Version,  @WorkflowInstanceID,  @Workflow_Step_Name,  @WorkflowStepInstanceID,  @server_name,  @CMPANYID,  @SystemDB   delete from WFI10005 where UPPER(Workflow_User)=@Workflow_User   and UPPER(WorkflowStepInstanceID)=@WorkflowStepInstanceID and UsersListGuid=''   if (select COUNT(UsersListGuid) from WFI10005   where UPPER(WorkflowStepInstanceID)=@WorkflowStepInstanceID and UPPER(UsersListGuid)=@Workflow_Managers   and upper(WorkflowTaskAssignedTo)=@Workflow_User and Workflow_User=@Workflow_User)>0  begin  select @UserIsManager=1  end  delete from WFI10005 where Workflow_User=@Workflow_User  end  end   if (select COUNT(WorkflowStepInstanceID) from WFI10004   where UPPER(WorkflowStepInstanceID)=@WorkflowStepInstanceID   and UPPER(WorkflowTaskAssignedTo)=@Workflow_User and Workflow_Action_Date='')>0  begin  select @UserAssignedTask=1  end   if @WorkflowStepInstanceID='' and @Workflow_Status=0  begin  select @Workflow_Status=1   end   if @UserAssignedTask=0  begin  if @Workflow_Status=1   begin  select @Workflow_Action_1=1, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=0  end   if @Workflow_Status=3   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=1, @Workflow_Action_10=1  end   if @Workflow_Status=4   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=1, @Workflow_Action_10=1  end   if @Workflow_Status=5   begin  select @Workflow_Action_1=0, @Workflow_Action_2=1, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=1  end   if @Workflow_Status=6   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=1, @Workflow_Action_10=1  end   if @Workflow_Status=7   begin  select @Workflow_Action_1=0, @Workflow_Action_2=1, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=1  end   if @Workflow_Status=9   begin  if @active_workflow_exists>0   begin  select @Workflow_Action_1=1, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=0  end  else  begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=0  end  end  end  if @UserAssignedTask=1 or @UserIsManager=1   begin  if @Workflow_Status=1   begin  select @Workflow_Action_1=1, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=0  end   if @Workflow_Status=3   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=1, @Workflow_Action_10=1  end   if @Workflow_Status=4   begin  if @Workflow_Step_Type=1   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=1,  @Workflow_Action_4=0, @Workflow_Action_5=1,  @Workflow_Action_7=0, @Workflow_Action_10=1  end  if @Workflow_Step_Type=2   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=1, @Workflow_Action_5=0,  @Workflow_Action_7=1, @Workflow_Action_10=1  end  if @Workflow_Manually_Delega=1  begin  select @Workflow_Action_6=1  end  end   if @Workflow_Status=5   begin  select @Workflow_Action_1=0, @Workflow_Action_2=1, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=1  end   if @Workflow_Status=6   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=1, @Workflow_Action_10=1  end   if @Workflow_Status=7   begin  select @Workflow_Action_1=0, @Workflow_Action_2=1, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=1  end   if @Workflow_Status=9   begin  if @active_workflow_exists>0   begin  select @Workflow_Action_1=1, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=0  end  else  begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0,  @Workflow_Action_7=0, @Workflow_Action_10=0  end  end  end   if @Workflow_Type_Name='Purchase Requisition Approval'   begin  select @Workflow_Status=Workflow_Status, @RequisitionStatus=RequisitionStatus  from POP10200 where POPRequisitionNumber=@WfBusObjKey  if @Workflow_Status=9 and @RequisitionStatus not in (1,2,3)   begin  select @Workflow_Action_1=0  end  end   select @Workflow_Action_1=ISNULL(@Workflow_Action_1,0)  select @Workflow_Action_2=ISNULL(@Workflow_Action_2,0)  select @Workflow_Action_3=ISNULL(@Workflow_Action_3,0)  select @Workflow_Action_4=ISNULL(@Workflow_Action_4,0)  select @Workflow_Action_5=ISNULL(@Workflow_Action_5,0)  select @Workflow_Action_6=ISNULL(@Workflow_Action_6,0)  select @Workflow_Action_7=ISNULL(@Workflow_Action_7,0)  select @Workflow_Action_8=ISNULL(@Workflow_Action_8,0)  select @Workflow_Action_9=ISNULL(@Workflow_Action_9,0)  select @Workflow_Action_10=ISNULL(@Workflow_Action_10,0)   if @Inquiry_Window=1   begin  select @Workflow_Action_1=0, @Workflow_Action_2=0, @Workflow_Action_3=0,  @Workflow_Action_4=0, @Workflow_Action_5=0, @Workflow_Action_6=0,  @Workflow_Action_7=0, @Workflow_Action_8=0, @Workflow_Action_9=0  end  if @Workflow_FirstClassWindow=1   begin  if (select @Workflow_Action_1+@Workflow_Action_2+@Workflow_Action_3+@Workflow_Action_4+@Workflow_Action_5+  @Workflow_Action_6+@Workflow_Action_7+@Workflow_Action_8+@Workflow_Action_9)=1  begin  select @Single_Action_Available=  case   when @Workflow_Action_1=1 then 1  when @Workflow_Action_2=1 then 2  when @Workflow_Action_3=1 then 3  when @Workflow_Action_4=1 then 4  when @Workflow_Action_5=1 then 5  when @Workflow_Action_6=1 then 6  when @Workflow_Action_7=1 then 7  when @Workflow_Action_8=1 then 8  when @Workflow_Action_9=1 then 9  else 0  end   end  end  else    begin  if (select @Workflow_Action_1+@Workflow_Action_2+@Workflow_Action_3+@Workflow_Action_4+@Workflow_Action_5+  @Workflow_Action_6+@Workflow_Action_7+@Workflow_Action_8+@Workflow_Action_9+@Workflow_Action_10)=1  begin   select @Single_Action_Available=  case   when @Workflow_Action_1=1 then 1  when @Workflow_Action_2=1 then 2  when @Workflow_Action_3=1 then 3  when @Workflow_Action_4=1 then 4  when @Workflow_Action_5=1 then 5  when @Workflow_Action_6=1 then 6  when @Workflow_Action_7=1 then 7  when @Workflow_Action_8=1 then 8  when @Workflow_Action_9=1 then 9  when @Workflow_Action_10=1 then 10  else 0  end   end  end  END   
GO
GRANT EXECUTE ON  [dbo].[wfAllowableActions] TO [DYNGRP]
GO