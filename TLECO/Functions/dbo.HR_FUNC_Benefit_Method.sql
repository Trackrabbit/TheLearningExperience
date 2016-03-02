SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Benefit_Method] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Percent of Gross Wages' when @iIntEnum = 2 then 'Percent of Net Wages' when @iIntEnum = 3 then 'Percent of Deduction' when @iIntEnum = 4 then 'Fixed Amount' when @iIntEnum = 5 then 'Amount per Unit' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
