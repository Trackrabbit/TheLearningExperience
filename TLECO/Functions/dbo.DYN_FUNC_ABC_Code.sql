SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_ABC_Code] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then '(none)' when @iIntEnum = 2 then 'A' when @iIntEnum = 3 then 'B' when @iIntEnum = 4 then 'C' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_ABC_Code] TO [DYNGRP]
GO
