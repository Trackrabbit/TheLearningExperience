SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Series_Tax_Detail_Trx] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Financial' when @iIntEnum = 2 then 'Receivables' when @iIntEnum = 3 then 'Invoicing' when @iIntEnum = 4 then 'Sales' when @iIntEnum = 5 then 'Payables' when @iIntEnum = 6 then 'Purchasing' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Series_Tax_Detail_Trx] TO [DYNGRP]
GO
