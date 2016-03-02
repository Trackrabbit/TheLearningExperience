SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Unit_of_Pay] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Hourly' when @iIntEnum = 2 then 'Salary' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
