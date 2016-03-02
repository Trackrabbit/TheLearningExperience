SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Color_Code] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Blue Diamond' when @iIntEnum = 2 then 'Green Circle' when @iIntEnum = 3 then 'Yellow Square' when @iIntEnum = 4 then 'Red Stop Symbol' when @iIntEnum = 5 then 'Not Available' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
