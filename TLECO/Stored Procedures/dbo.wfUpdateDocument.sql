SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfUpdateDocument]  @WorkflowInstanceID char(37),  @UpdateAction tinyint,   @Integer_Value int,  @String_Value char(100),  @Date_Value datetime,  @Workflow_Error int OUTPUT AS  BEGIN   declare @Workflow_Step_Name char(51), @Workflow_Name char(51), @Workflow_Type_Name char(51)  declare @Workflow_Where_Clause varchar(4000)  declare @Primary_Table varchar(50)  declare @SqlText1 varchar(8000)  select @WorkflowInstanceID=UPPER(@WorkflowInstanceID)  select @Primary_Table=TBLPHYSNM, @Workflow_Where_Clause=Workflow_Where_Clause,  @Workflow_Type_Name=Workflow_Type_Name  from WFI10002 where WorkflowInstanceID=@WorkflowInstanceID   if @UpdateAction=1  begin  select @SqlText1=''  if @Workflow_Type_Name = 'Smartlist Designer View Approval'   select @SqlText1=@SqlText1+'update '+' DYNAMICS..'+rtrim(@Primary_Table)+' set Workflow_Status= '+ltrim(str(@Integer_Value))+@Workflow_Where_Clause  else  select @SqlText1=@SqlText1+'update '+rtrim(@Primary_Table)+' set Workflow_Status= '+ltrim(str(@Integer_Value))+@Workflow_Where_Clause  exec(@SqlText1)  end END   
GO
GRANT EXECUTE ON  [dbo].[wfUpdateDocument] TO [DYNGRP]
GO
