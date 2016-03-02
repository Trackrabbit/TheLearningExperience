SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Type_of_Employment] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Full Time Regular' when @iIntEnum = 2 then 'Full Time Temp' when @iIntEnum = 3 then 'Part Time Regular' when @iIntEnum = 4 then 'Part Time Temp' when @iIntEnum = 5 then 'Intern' when @iIntEnum = 6 then 'Other' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
