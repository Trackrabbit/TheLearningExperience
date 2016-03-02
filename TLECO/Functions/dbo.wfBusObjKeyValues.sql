SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[wfBusObjKeyValues] (  @Workflow_Business_Object_Key char(201) )  returns @wfBusObjKeyValues table (  ResourceName char(128) )   AS  BEGIN  declare @field_name char(128)  declare @table_fields char(201), @table_location int, @field_location int   select @table_fields = rtrim(@Workflow_Business_Object_Key)   select @field_location=1  while @field_location>0  begin  select @field_location=charindex('~',@table_fields)  if @field_location>0   begin  select @field_name = SUBSTRING(@table_fields,1,(@field_location-1))  insert into @wfBusObjKeyValues select @field_name  select @table_fields = SUBSTRING(@table_fields,(@field_location+1),201)  end   else   begin  select @field_name = RTRIM(@table_fields)  insert into @wfBusObjKeyValues select @field_name  end  end  return END    
GO
GRANT SELECT ON  [dbo].[wfBusObjKeyValues] TO [DYNGRP]
GO
