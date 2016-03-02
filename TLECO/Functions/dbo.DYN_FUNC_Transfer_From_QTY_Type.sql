SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Transfer_From_QTY_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'On Hand' when @iIntEnum = 2 then 'Returned' when @iIntEnum = 3 then 'In Use' when @iIntEnum = 4 then 'In Service' when @iIntEnum = 5 then 'Damaged' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Transfer_From_QTY_Type] TO [DYNGRP]
GO
