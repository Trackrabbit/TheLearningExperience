SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[AA_FUNC_Data_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Alphanumeric' when @iIntEnum = 2 then 'Numeric' when @iIntEnum = 3 then 'Yes/No' when @iIntEnum = 4 then 'Date' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[AA_FUNC_Data_Type] TO [DYNGRP]
GO
