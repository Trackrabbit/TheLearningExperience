SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Address_Source] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'None' when @iIntEnum = 1 then 'Ship To' when @iIntEnum = 2 then 'Purchasing' when @iIntEnum = 3 then 'Site' when @iIntEnum = 4 then 'Company' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Address_Source] TO [DYNGRP]
GO
