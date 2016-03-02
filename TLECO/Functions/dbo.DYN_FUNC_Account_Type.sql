SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Account_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Posting Account' when @iIntEnum = 2 then 'Unit Account' when @iIntEnum = 3 then 'Posting Allocation Account' when @iIntEnum = 4 then 'Unit Allocation Account' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Account_Type] TO [DYNGRP]
GO
