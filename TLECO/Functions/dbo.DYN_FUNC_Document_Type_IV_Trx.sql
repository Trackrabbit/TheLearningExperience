SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Document_Type_IV_Trx] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Adjustment' when @iIntEnum = 2 then 'Variance' when @iIntEnum = 3 then 'Transfer' when @iIntEnum = 4 then 'Receipt' when @iIntEnum = 5 then 'Return' when @iIntEnum = 6 then 'Sale' when @iIntEnum = 7 then 'Bill of Materials' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Document_Type_IV_Trx] TO [DYNGRP]
GO
