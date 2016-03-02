SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Display_In_Lookups] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Sales' when @iIntEnum = 2 then 'Inventory Control' when @iIntEnum = 3 then 'Purchasing' when @iIntEnum = 4 then 'Payroll' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Display_In_Lookups] TO [DYNGRP]
GO
