SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Amortization_Code] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Daily' when @iIntEnum = 2 then 'Weekly' when @iIntEnum = 3 then 'Monthly' when @iIntEnum = 4 then 'Quarterly' when @iIntEnum = 5 then 'Yearly' when @iIntEnum = 6 then 'Percentage' when @iIntEnum = 7 then 'Rate' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
