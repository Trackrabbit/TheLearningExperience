SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Benefit_Kind] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Medical' when @iIntEnum = 2 then 'Life/Disability' when @iIntEnum = 3 then 'Retirement' when @iIntEnum = 4 then 'Miscellaneous Benefits' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
