SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Batch_Frequency] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Single Use' when @iIntEnum = 2 then 'Weekly' when @iIntEnum = 3 then 'Biweekly' when @iIntEnum = 4 then 'Semimonthly' when @iIntEnum = 5 then 'Monthly' when @iIntEnum = 6 then 'Bimonthly' when @iIntEnum = 7 then 'Quarterly' when @iIntEnum = 8 then 'Miscellaneous' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Batch_Frequency] TO [DYNGRP]
GO
