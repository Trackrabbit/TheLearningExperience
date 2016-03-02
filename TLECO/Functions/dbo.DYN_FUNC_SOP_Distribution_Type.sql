SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_SOP_Distribution_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'SALES' when @iIntEnum = 2 then 'RECV' when @iIntEnum = 3 then 'CASH' when @iIntEnum = 4 then 'TAKEN' when @iIntEnum = 5 then 'AVAIL' when @iIntEnum = 6 then 'TRADE' when @iIntEnum = 7 then 'FREIGHT' when @iIntEnum = 8 then 'MISC' when @iIntEnum = 9 then 'TAXES' when @iIntEnum = 10 then 'MARK' when @iIntEnum = 11 then 'COMMEXP' when @iIntEnum = 12 then 'COMMPAY' when @iIntEnum = 13 then 'OTHER' when @iIntEnum = 14 then 'COGS' when @iIntEnum = 15 then 'INV' when @iIntEnum = 16 then 'RETURNS' when @iIntEnum = 17 then 'IN USE' when @iIntEnum = 18 then 'IN SERVICE' when @iIntEnum = 19 then 'DAMAGED' when @iIntEnum = 20 then 'UNIT' when @iIntEnum = 21 then 'DEPOSITS' when @iIntEnum = 22 then 'ROUND' when @iIntEnum = 23 then 'REBATE' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_SOP_Distribution_Type] TO [DYNGRP]
GO
