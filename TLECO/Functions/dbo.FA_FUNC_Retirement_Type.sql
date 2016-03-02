SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Retirement_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Abandonment' when @iIntEnum = 2 then 'Casualty' when @iIntEnum = 3 then 'Involuntary Conversion' when @iIntEnum = 4 then 'Life-Kind Exchange' when @iIntEnum = 5 then 'Mass Retirement' when @iIntEnum = 6 then 'Sale' when @iIntEnum = 7 then 'Taxable Exchange' when @iIntEnum = 8 then 'Other' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
