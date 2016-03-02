SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfGetWorkflowTypeTableandFields]   @Workflow_Type_Name char(51) AS  BEGIN  declare @resource_list TABLE (ResourceName char(128))   declare @WfTypeBusObjKey char(201),@WfTypeBusObjKeyTable char(128), @field_name char(128)  declare @table_fields char(128), @table_location int, @field_location int   select @WfTypeBusObjKey=WfTypeBusObjKey from WF100001 where Workflow_Type_Name=@Workflow_Type_Name  select @table_location=charindex('\',@WfTypeBusObjKey)  select @WfTypeBusObjKeyTable = substring(@WfTypeBusObjKey,1,(@table_location-1))  insert into @resource_list select @WfTypeBusObjKeyTable   select @table_fields = SUBSTRING(@WfTypeBusObjKey,(@table_location+1),201)   select @field_location=1  while @field_location>0  begin  select @field_location=charindex('~',@table_fields)  if @field_location>0   begin  select @field_name = SUBSTRING(@table_fields,1,(@field_location-1))  insert into @resource_list select @field_name  select @table_fields = SUBSTRING(@table_fields,(@field_location+1),201)  end   else   begin  select @field_name = RTRIM(@table_fields)  insert into @resource_list select @field_name  end  end   select * from @resource_list END   
GO
GRANT EXECUTE ON  [dbo].[wfGetWorkflowTypeTableandFields] TO [DYNGRP]
GO
