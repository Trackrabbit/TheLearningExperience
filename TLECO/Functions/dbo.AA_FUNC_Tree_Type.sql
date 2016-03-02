SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[AA_FUNC_Tree_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Account Number' when @iIntEnum = 2 then 'Customer' when @iIntEnum = 3 then 'Employee' when @iIntEnum = 4 then 'Item' when @iIntEnum = 5 then 'Site' when @iIntEnum = 6 then 'Vendor' when @iIntEnum = 9 then '' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[AA_FUNC_Tree_Type] TO [DYNGRP]
GO
