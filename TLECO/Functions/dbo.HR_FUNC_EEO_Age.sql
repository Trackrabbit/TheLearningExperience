SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_EEO_Age] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then '18 - 25' when @iIntEnum = 2 then '26 - 35' when @iIntEnum = 3 then '36 - 45' when @iIntEnum = 4 then '46 - 55' when @iIntEnum = 5 then '56 +' when @iIntEnum = 6 then 'Unknown' when @iIntEnum = 7 then '00 - 17' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
