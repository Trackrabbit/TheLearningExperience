SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Purchasing_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'None' when @iIntEnum = 2 then 'Needs Purchase' when @iIntEnum = 3 then 'Purchased' when @iIntEnum = 4 then 'Partially Received' when @iIntEnum = 5 then 'Fully Received' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Purchasing_Status] TO [DYNGRP]
GO
