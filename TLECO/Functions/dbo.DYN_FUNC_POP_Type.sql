SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_POP_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Shipment' when @iIntEnum = 2 then 'Invoice' when @iIntEnum = 3 then 'Shipment/Invoice' when @iIntEnum = 4 then 'Return' when @iIntEnum = 5 then 'Return w/Credit' when @iIntEnum = 6 then 'IV Return' when @iIntEnum = 7 then 'IV Return w/Credit' when @iIntEnum = 8 then 'In-Transit' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_POP_Type] TO [DYNGRP]
GO
