SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Statement_Cycle] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'No Statement' when @iIntEnum = 2 then 'Weekly' when @iIntEnum = 3 then 'Biweekly' when @iIntEnum = 4 then 'Semimonthly' when @iIntEnum = 5 then 'Monthly' when @iIntEnum = 6 then 'Bimonthly' when @iIntEnum = 7 then 'Quarterly' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Statement_Cycle] TO [DYNGRP]
GO
