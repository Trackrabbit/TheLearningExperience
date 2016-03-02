SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Purchase_Receipt_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Adjustment' when @iIntEnum = 2 then 'Variance' when @iIntEnum = 3 then 'Transfer' when @iIntEnum = 4 then 'Override' when @iIntEnum = 5 then 'Receipt' when @iIntEnum = 6 then 'Return' when @iIntEnum = 7 then 'Assembly' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Purchase_Receipt_Type] TO [DYNGRP]
GO
