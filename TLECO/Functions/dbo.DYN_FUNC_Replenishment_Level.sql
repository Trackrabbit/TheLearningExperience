SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Replenishment_Level] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Order Point Quantity' when @iIntEnum = 2 then 'Order-Up-To Level' when @iIntEnum = 3 then 'Vendor EOQ' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Replenishment_Level] TO [DYNGRP]
GO
