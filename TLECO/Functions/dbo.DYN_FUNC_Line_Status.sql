SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Line_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Gain Or Loss' when @iIntEnum = 2 then 'Normal Rounding' when @iIntEnum = 3 then 'One Sided' when @iIntEnum = 4 then 'Other Rounding' when @iIntEnum = 5 then 'Standard' when @iIntEnum = 6 then 'Unit Account' when @iIntEnum = 7 then 'Exchange Rate Variance' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Line_Status] TO [DYNGRP]
GO
