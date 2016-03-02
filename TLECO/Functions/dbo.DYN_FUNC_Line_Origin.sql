SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Line_Origin] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Manual' when @iIntEnum = 2 then 'e. Req.' when @iIntEnum = 3 then 'SOP' when @iIntEnum = 4 then 'MRP' when @iIntEnum = 5 then 'SMS-CL' when @iIntEnum = 6 then 'SMS-RT' when @iIntEnum = 7 then 'SMS-DP' when @iIntEnum = 8 then 'MOP' when @iIntEnum = 9 then 'PO Gen' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Line_Origin] TO [DYNGRP]
GO
