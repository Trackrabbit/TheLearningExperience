SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[wfGetDocAttachBusObjKey]( @WfBusObjKey char(201), @Workflow_Type_Name char(51)) RETURNS varchar(256) AS BEGIN  declare @Table TABLE ( [Value] VARCHAR(201), [Cnt] int )  declare @Delimeter char(1)  declare @Value    VARCHAR(201)  declare @Index int  declare @Key1 varchar(100)  declare @Key2 varchar(100)  declare @Key3 varchar(100)  declare @Key4 varchar(100)  declare @busObjKey varchar(201)  select @busObjKey = ''  select @Delimeter = '~'  select @Index = 1  WHILE LEN(@WfBusObjKey) > 0  BEGIN  SET @Value    = LEFT(@WfBusObjKey,  ISNULL(NULLIF(CHARINDEX(@Delimeter, @WfBusObjKey) - 1, -1),  LEN(@WfBusObjKey)))  SET @WfBusObjKey = SUBSTRING(@WfBusObjKey,  ISNULL(NULLIF(CHARINDEX(@Delimeter, @WfBusObjKey), 0),  LEN(@WfBusObjKey)) + 1, LEN(@WfBusObjKey))  Set @Value = LTRIM(RTRIM(@Value))  INSERT INTO @Table ( [Value], [Cnt] )  VALUES ( @Value, @Index )  select @Index = @Index + 1  END  if (@Workflow_Type_Name = 'Purchase Order Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1  select @busObjKey = '0\PM\Purchase Order\' + ltrim(rtrim(@Key1))  end   if (@Workflow_Type_Name = 'Purchase Requisition Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = '0\PM\Requisition\' + ltrim(rtrim(@Key1))  end  if (@Workflow_Type_Name = 'Payroll Timecard Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @Key2 =Value from @Table where Cnt = 2   select @Key3 =Value from @Table where Cnt = 3   select @Key4 =Value from @Table where Cnt = 4   select @busObjKey = '0\UPR\Timecard\' + ltrim(rtrim(@Key1)) + '~' + ltrim(rtrim(@Key2)) + '\' + ltrim(rtrim(@Key3)) + '\' + ltrim(rtrim(@Key4))  end   if (@Workflow_Type_Name = 'Vendor Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = '0\PM\Vendor Maintenance\' + ltrim(rtrim(@Key1))  end   if (@Workflow_Type_Name in( 'Timesheet Approval'))  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = '258\PA\PTE Timesheet\' + ltrim(rtrim(@Key1))  end  if (@Workflow_Type_Name in( 'Expense Report Approval'))  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = '258\PA\PTE Expense Report\' + ltrim(rtrim(@Key1))  end   if (@Workflow_Type_Name = 'Employee Profile Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @Key2 =Value from @Table where Cnt = 2   select @Key3 =Value from @Table where Cnt = 3   select @busObjKey = '0\UPR\ESS Employee Profile\' + ltrim(rtrim(@Key1)) + '~' + ltrim(rtrim(@Key2)) + '\' + ltrim(rtrim(@Key3))  end   if (@Workflow_Type_Name = 'Payroll W4 Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @Key2 =Value from @Table where Cnt = 2  select @busObjKey = '0\UPR\ESS W4\' + ltrim(rtrim(@Key1)) + '~' + ltrim(rtrim(@Key2))  end   if (@Workflow_Type_Name = 'Payroll Direct Deposit Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = '0\UPR\ESS Direct Deposit\' + ltrim(rtrim(@Key1))  end  if (@Workflow_Type_Name = 'Employee Skills Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = '0\UPR\ESS Employee Skills\' + ltrim(rtrim(@Key1)) + '~' + ltrim(rtrim(@Key2)) + '\' + ltrim(rtrim(@Key3))  end   if (@Workflow_Type_Name = 'Payables Transaction Approval')  Begin  select @Key1 =Value from @Table where Cnt = 1   select @busObjKey = (select ( '0\PM\Payables Transaction\'+(LTRIM(RTRIM(str(DOCTYPE)))+'~'+VCHNUMWK)) as Busobj from PM10000 PM   where PM.VCHNUMWK=SUBSTRING(@Key1,1,(CHARINDEX('~', @Key1)-1)))  end   return @busObjKey END   
GO
GRANT EXECUTE ON  [dbo].[wfGetDocAttachBusObjKey] TO [DYNGRP]
GO