SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_DTA_Series] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'All' when @iIntEnum = 2 then 'Financial' when @iIntEnum = 3 then 'Sales' when @iIntEnum = 4 then 'Purchasing' when @iIntEnum = 5 then 'Inventory' when @iIntEnum = 6 then 'Payroll' when @iIntEnum = 7 then 'Project' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_DTA_Series] TO [DYNGRP]
GO
