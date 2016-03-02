SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfDocAttach]   @Workflow_Type_Name char(51),  @Workflow_Business_Object_Key char(37),  @WorkflowStepInstanceID char(37)  AS  BEGIN  declare @DocAttachBusObjKeyFunction varchar(100),  @ParamDef nvarchar(1000),  @Sql nvarchar(2000),  @DocAttachBusObjKey char(37)   select @DocAttachBusObjKeyFunction = DocAttachBusObjKeyFuncti from WF100001 where Workflow_Type_Name= @Workflow_Type_Name   if (@DocAttachBusObjKeyFunction is not null and len(@DocAttachBusObjKeyFunction) > 0)  begin  Begin Try  set @ParamDef = '@DocAttachBusObjKeyOut varchar(201) output'  set @Sql = 'select @DocAttachBusObjKeyOut = [dbo].[' + ltrim(rtrim(@DocAttachBusObjKeyFunction)) + '](''' + ltrim(rtrim(@Workflow_Business_Object_Key)) + ''', ''' + ltrim(rtrim(@Workflow_Type_Name)) + ''')'  execute sp_executesql @Sql, @ParamDef, @DocAttachBusObjKeyOut = @DocAttachBusObjKey  output  select @DocAttachBusObjKey = isnull(@DocAttachBusObjKey, '')  end try  begin catch  select @DocAttachBusObjKey = ''  end catch  end   if @Workflow_Type_Name = 'Vendor Approval'   begin  update CO00102 set WorkflowStepInstanceID = @WorkflowStepInstanceID   where BusObjKey = @DocAttachBusObjKey and DELETE1 <> 1   end   if  @Workflow_Type_Name = 'Payables Batch Approval'  begin  update CO00102 set WorkflowStepInstanceID = @WorkflowStepInstanceID where BusObjKey in   (select ( '0\PM\Payables Transaction\'+(LTRIM(RTRIM(str(DOCTYPE)))+'~'+VCHRNMBR)) as Busobj from PM10000 PM   where PM.BACHNUMB=SUBSTRING(LTRIM(RTRIM(@Workflow_Business_Object_Key)),1,  (CHARINDEX('~', LTRIM(RTRIM(@Workflow_Business_Object_Key)))-1))  )   and DELETE1 <> 1  end    if @Workflow_Type_Name = 'Payables Transaction Approval'  begin  update CO00102 set WorkflowStepInstanceID = @WorkflowStepInstanceID   where  DELETE1 <> 1 and BusObjKey = (select ( '0\PM\Payables Transaction\'+(LTRIM(RTRIM(str(DOCTYPE)))+'~'+VCHNUMWK)) as Busobj from PM10000 PM   where PM.VCHNUMWK=SUBSTRING(@Workflow_Business_Object_Key,1,(CHARINDEX('~', @Workflow_Business_Object_Key)-1)))   end   if @Workflow_Type_Name = 'Purchase Requisition Approval'  begin  update CO00102 set WorkflowStepInstanceID = @WorkflowStepInstanceID   where DELETE1 <> 1 and   BusObjKey = @DocAttachBusObjKey or   BusObjKey like  '0\PM\Requisition Line\'+LTRIM(RTRIM(@Workflow_Business_Object_Key))+'%'  end  if @Workflow_Type_Name = 'Purchase Order Approval'  begin  update CO00102 set WorkflowStepInstanceID = @WorkflowStepInstanceID   where DELETE1 <> 1 and   BusObjKey = @DocAttachBusObjKey or   BusObjKey like  '0\PM\Purchase Order Line\'+LTRIM(RTRIM(@Workflow_Business_Object_Key))+'%'  end END   
GO
GRANT EXECUTE ON  [dbo].[wfDocAttach] TO [DYNGRP]
GO
