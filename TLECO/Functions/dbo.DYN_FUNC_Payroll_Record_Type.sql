SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Payroll_Record_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Pay Codes' when @iIntEnum = 2 then 'Deductions' when @iIntEnum = 3 then 'Benefits' when @iIntEnum = 4 then 'State Taxes' when @iIntEnum = 5 then 'Local Taxes' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Payroll_Record_Type] TO [DYNGRP]
GO
