SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Benefit_Frequency] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Weekly' when @iIntEnum = 2 then 'Biweekly' when @iIntEnum = 3 then 'Semimonthly' when @iIntEnum = 4 then 'Monthly' when @iIntEnum = 5 then 'Quarterly' when @iIntEnum = 6 then 'Semiannually' when @iIntEnum = 7 then 'Annually' when @iIntEnum = 8 then 'Daily/Miscellaneous' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
