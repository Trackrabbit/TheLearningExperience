SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Property_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Personal' when @iIntEnum = 2 then 'Personal, Listed' when @iIntEnum = 3 then 'Real' when @iIntEnum = 4 then 'Real, Listed' when @iIntEnum = 5 then 'Real, Conservation' when @iIntEnum = 6 then 'Real, Energy' when @iIntEnum = 7 then 'Real, Farms' when @iIntEnum = 8 then 'Real, Low Income Housing' when @iIntEnum = 9 then 'Amortizable' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
