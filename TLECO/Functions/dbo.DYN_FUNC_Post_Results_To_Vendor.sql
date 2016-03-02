SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Post_Results_To_Vendor] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'Payables/Discount Acct' when @iIntEnum = 1 then 'Purchasing Offset Acct' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Post_Results_To_Vendor] TO [DYNGRP]
GO
