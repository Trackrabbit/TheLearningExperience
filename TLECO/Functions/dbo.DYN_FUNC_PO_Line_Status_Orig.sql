SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_PO_Line_Status_Orig] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'New' when @iIntEnum = 2 then 'Released' when @iIntEnum = 3 then 'Change Order' when @iIntEnum = 4 then 'Received' when @iIntEnum = 5 then 'Closed' when @iIntEnum = 6 then 'Canceled' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_PO_Line_Status_Orig] TO [DYNGRP]
GO
