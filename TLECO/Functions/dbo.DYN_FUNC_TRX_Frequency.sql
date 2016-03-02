SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_TRX_Frequency] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Weekly' when @iIntEnum = 2 then 'Biweekly' when @iIntEnum = 3 then 'Semimonthly' when @iIntEnum = 4 then 'Monthly' when @iIntEnum = 5 then 'Bimonthly' when @iIntEnum = 6 then 'Quarterly' when @iIntEnum = 7 then 'Miscellaneous' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_TRX_Frequency] TO [DYNGRP]
GO
