SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfEvaluateStep]   @WorkflowInstanceID char(37),  @FieldsListGuid char(37),   @Workflow_Step_Conditions char(37),  @valid_step tinyint OUTPUT AS  BEGIN  declare @sql_string nvarchar(4000)  declare @where_clause nvarchar(4000)  declare @cursor_string nvarchar(4000)  declare @result_count int  declare @TableName varchar(10),   @TableName2 varchar(10)  declare @Error int  set NOCOUNT ON  select @WorkflowInstanceID=UPPER(@WorkflowInstanceID)  select @FieldsListGuid=UPPER(@FieldsListGuid)  select @Workflow_Step_Conditions=UPPER(@Workflow_Step_Conditions)  select @valid_step=0   select @where_clause=Workflow_Where_Clause from WFI10002 where   WorkflowInstanceID=@WorkflowInstanceID   exec qdCreateSql @FieldsListGuid, @Workflow_Step_Conditions,   1,@where_clause,   @result_count out, @TableName out, @TableName2 out, @Error out  if @result_count>0  select @valid_step=1  END   
GO
GRANT EXECUTE ON  [dbo].[wfEvaluateStep] TO [DYNGRP]
GO
