SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Pay_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Hourly' when @iIntEnum = 2 then 'Salary' when @iIntEnum = 3 then 'Piecework' when @iIntEnum = 4 then 'Commission' when @iIntEnum = 5 then 'Business Expense' when @iIntEnum = 6 then 'Overtime' when @iIntEnum = 7 then 'Double Time' when @iIntEnum = 8 then 'Vacation' when @iIntEnum = 9 then 'Sick' when @iIntEnum = 10 then 'Holiday' when @iIntEnum = 11 then 'Pension' when @iIntEnum = 12 then 'Other' when @iIntEnum = 13 then 'Earned Income Credit' when @iIntEnum = 14 then 'Charged Tips' when @iIntEnum = 15 then 'Reported Tips' when @iIntEnum = 16 then 'Minimum Wage Balance' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
