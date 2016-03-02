SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Receiving_MC_Transaction_State] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'No Euro' when @iIntEnum = 1 then 'Non-Denomination to Non-Denomination' when @iIntEnum = 2 then 'Non-Denomination to Euro' when @iIntEnum = 3 then 'Non-Denomination to Denomination' when @iIntEnum = 4 then 'Denomination to Non-Denomination' when @iIntEnum = 5 then 'Denomination to Denomination' when @iIntEnum = 6 then 'Denomination to Euro' when @iIntEnum = 7 then 'Euro to Denomination' when @iIntEnum = 8 then 'Euro to Non-Denomination' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Receiving_MC_Transaction_State] TO [DYNGRP]
GO
