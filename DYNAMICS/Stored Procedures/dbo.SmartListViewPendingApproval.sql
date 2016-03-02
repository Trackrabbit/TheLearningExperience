SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[SmartListViewPendingApproval]  @I_sTableName varchar(27) = NULL,  @O_iErrorState int = NULL output  as  declare @iStatus int,  @iError int  if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ADH00100]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) BEGIN exec ('insert into ' + @I_sTableName + ' (' +  'DICTID, VIEWTYPE, ViewName, PRODID, Series_Name,MKTOPROC, InfoValue, Workflow_Status, Workflow_Name,' +  'Workflow_Originator, WorkflowInstanceID, WorkflowStepInstanceID, Workflow_Step_Type,' +  'Workflow_Type_Name, Workflow_Step_Name, Workflow_Due_Date, Workflow_Due_Time,   ' +  'Workflow_Approver )' +  'select distinct ' +   ' ASI_Favorite_Dict_ID, ASI_Favorite_Type, ADHListName, ADHParentFavoriteType,'''',0,0, Workflow_Status , '''' ,' +  ''''', '''', '''', '''', '''', '''', '''', '''', '''' ' +  'from [dbo].[ADH00100]  where Workflow_Status = 4  '   )  END  select @iError = @@error if @iError <> 0  return (@iError)  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[SmartListViewPendingApproval] TO [DYNGRP]
GO
