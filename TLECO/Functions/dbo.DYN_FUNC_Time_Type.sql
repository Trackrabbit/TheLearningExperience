SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Time_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Hourly' when @iIntEnum = 2 then 'Salary' when @iIntEnum = 3 then 'Overtime' when @iIntEnum = 4 then 'Benefit' when @iIntEnum = 5 then 'Absent' when @iIntEnum = 6 then 'Other' else ''  end  RETURN(@oVarcharValuestring)  END 
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Time_Type] TO [DYNGRP]
GO
