SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_SOP_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Quote' when @iIntEnum = 2 then 'Order' when @iIntEnum = 3 then 'Invoice' when @iIntEnum = 4 then 'Return' when @iIntEnum = 5 then 'Back Order' when @iIntEnum = 6 then 'Fulfillment Order' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_SOP_Type] TO [DYNGRP]
GO
