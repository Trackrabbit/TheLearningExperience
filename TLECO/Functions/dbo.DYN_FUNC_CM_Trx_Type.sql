SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_CM_Trx_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Deposit' when @iIntEnum = 2 then 'Receipt' when @iIntEnum = 3 then 'Check' when @iIntEnum = 4 then 'Withdrawal' when @iIntEnum = 5 then 'Increase Adjustment' when @iIntEnum = 6 then 'Decrease Adjustment' when @iIntEnum = 7 then 'Transfer' when @iIntEnum = 101 then 'Interest Income' when @iIntEnum = 102 then 'Other Income' when @iIntEnum = 103 then 'Other Expense' when @iIntEnum = 104 then 'Service Charge' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_CM_Trx_Type] TO [DYNGRP]
GO
