SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Decimal_Places_QTYS] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then '0' when @iIntEnum = 2 then '1' when @iIntEnum = 3 then '2' when @iIntEnum = 4 then '3' when @iIntEnum = 5 then '4' when @iIntEnum = 6 then '5' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Decimal_Places_QTYS] TO [DYNGRP]
GO
