SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Transaction_Account_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Reserve' when @iIntEnum = 2 then 'Depreciation' when @iIntEnum = 3 then 'Cost' when @iIntEnum = 4 then 'Proceeds' when @iIntEnum = 5 then 'Recognized Gain/Loss' when @iIntEnum = 6 then 'Non Recognized Gain/Loss' when @iIntEnum = 7 then 'Clearing' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
