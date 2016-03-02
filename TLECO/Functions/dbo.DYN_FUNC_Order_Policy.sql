SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Order_Policy] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Not Planned' when @iIntEnum = 2 then 'Lot for Lot' when @iIntEnum = 3 then 'Fixed Order Quantity' when @iIntEnum = 4 then 'Period Order Quantity' when @iIntEnum = 5 then 'Order Point' when @iIntEnum = 6 then 'Manually Planned' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Order_Policy] TO [DYNGRP]
GO
