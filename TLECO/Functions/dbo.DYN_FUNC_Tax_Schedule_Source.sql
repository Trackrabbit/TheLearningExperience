SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Tax_Schedule_Source] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'No Error' when @iIntEnum = 1 then 'Using Site Schedule ID' when @iIntEnum = 2 then 'Using Ship To Schedule ID' when @iIntEnum = 3 then 'Using Single Schedule' when @iIntEnum = 4 then 'Schedule ID Empty' when @iIntEnum = 5 then 'Schedule ID Not Found' when @iIntEnum = 6 then 'Shipping Method Not Found' when @iIntEnum = 7 then 'Setup File Missing/Damaged' when @iIntEnum = 8 then 'Site Location Not Found' when @iIntEnum = 9 then 'Address Record Not Found' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Tax_Schedule_Source] TO [DYNGRP]
GO
