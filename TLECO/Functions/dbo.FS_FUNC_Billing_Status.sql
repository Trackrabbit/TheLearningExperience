SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Billing_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Invoiced' when @iIntEnum = 2 then 'Cancelled' when @iIntEnum = 3 then 'On Hold' when @iIntEnum = 4 then 'Pending Cancellation' when @iIntEnum = 5 then 'Evergreen Terminated' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
