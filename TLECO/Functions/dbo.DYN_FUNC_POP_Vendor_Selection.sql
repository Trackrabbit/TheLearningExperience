SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_POP_Vendor_Selection] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Site Primary Vendor' when @iIntEnum = 2 then 'Vendor With Lowest Cost' when @iIntEnum = 3 then 'Vendor With Shortest Lead Time' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_POP_Vendor_Selection] TO [DYNGRP]
GO
