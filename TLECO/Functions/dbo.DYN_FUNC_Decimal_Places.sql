SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Decimal_Places] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then '0' when @iIntEnum = 1 then '1' when @iIntEnum = 2 then '2' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Decimal_Places] TO [DYNGRP]
GO
