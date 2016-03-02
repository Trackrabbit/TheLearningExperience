SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Type_of_Code] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Benefit' when @iIntEnum = 2 then 'Deduction' when @iIntEnum = 3 then 'Both' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
