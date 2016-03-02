SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Cost_Calculation_Method] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Percent of Extended Cost' when @iIntEnum = 2 then 'Flat Amount' when @iIntEnum = 3 then 'Flat Amount Per Unit' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Cost_Calculation_Method] TO [DYNGRP]
GO
