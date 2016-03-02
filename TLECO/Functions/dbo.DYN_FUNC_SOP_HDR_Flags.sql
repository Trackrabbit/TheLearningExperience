SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_SOP_HDR_Flags] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Freight Transferred' when @iIntEnum = 2 then 'Misc Transferred' when @iIntEnum = 3 then 'Trade Discount Transferred' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_SOP_HDR_Flags] TO [DYNGRP]
GO
