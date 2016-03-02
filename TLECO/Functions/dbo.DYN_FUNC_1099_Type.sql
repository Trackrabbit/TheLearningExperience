SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_1099_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Not a 1099 Vendor' when @iIntEnum = 2 then 'Dividend' when @iIntEnum = 3 then 'Interest' when @iIntEnum = 4 then 'Miscellaneous' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_1099_Type] TO [DYNGRP]
GO
