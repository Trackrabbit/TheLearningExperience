SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Cost_Selection] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Vendor Last Originating Invoice Cost' when @iIntEnum = 2 then 'Item Current Cost' when @iIntEnum = 3 then 'Item Standard Cost' when @iIntEnum = 4 then 'Specified Cost (In Functional Currency)' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Cost_Selection] TO [DYNGRP]
GO
