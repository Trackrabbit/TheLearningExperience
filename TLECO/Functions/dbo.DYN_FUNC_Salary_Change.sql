SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Salary_Change] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Reallocate Dollars' when @iIntEnum = 2 then 'Reallocate Hours' when @iIntEnum = 3 then 'Reduce Dollars' when @iIntEnum = 4 then 'Reduce Hours' when @iIntEnum = 5 then 'Additional Amount' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Salary_Change] TO [DYNGRP]
GO
