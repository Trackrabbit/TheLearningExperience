SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Originating_DTA_Series] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'All' when @iIntEnum = 1 then 'Financial' when @iIntEnum = 2 then 'Sales' when @iIntEnum = 3 then 'Purchasing' when @iIntEnum = 4 then 'Inventory' when @iIntEnum = 5 then 'Payroll' when @iIntEnum = 6 then 'Project' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Originating_DTA_Series] TO [DYNGRP]
GO
