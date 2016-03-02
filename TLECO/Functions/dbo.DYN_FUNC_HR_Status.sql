SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_HR_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Active' when @iIntEnum = 2 then 'Family Leave' when @iIntEnum = 3 then 'Leave of Absence' when @iIntEnum = 4 then 'Maternity' when @iIntEnum = 5 then 'Retired' when @iIntEnum = 6 then 'Separated' when @iIntEnum = 7 then 'Suspended' when @iIntEnum = 8 then 'Terminated' when @iIntEnum = 9 then 'Other' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_HR_Status] TO [DYNGRP]
GO
