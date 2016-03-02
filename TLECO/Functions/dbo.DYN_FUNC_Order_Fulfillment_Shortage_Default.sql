SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Order_Fulfillment_Shortage_Default] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'None' when @iIntEnum = 2 then 'Back Order Remaining' when @iIntEnum = 3 then 'Cancel Remaining' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Order_Fulfillment_Shortage_Default] TO [DYNGRP]
GO
