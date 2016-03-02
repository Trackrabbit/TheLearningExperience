SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_POP_Tax_Schedule_Source] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'None' when @iIntEnum = 1 then 'Company' when @iIntEnum = 2 then 'Single-use' when @iIntEnum = 3 then 'Purchase' when @iIntEnum = 4 then 'Ship To' when @iIntEnum = 5 then 'Site' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_POP_Tax_Schedule_Source] TO [DYNGRP]
GO
