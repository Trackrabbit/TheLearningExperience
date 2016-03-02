SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Luxury_Automobile_Indicator] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'No' when @iIntEnum = 2 then 'Yes' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
