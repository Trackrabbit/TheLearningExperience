SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Billing_Cycle] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Monthly' when @iIntEnum = 2 then 'Bi-Monthly' when @iIntEnum = 3 then 'Quarterly' when @iIntEnum = 4 then 'Semi-Annual' when @iIntEnum = 5 then 'Annual' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
