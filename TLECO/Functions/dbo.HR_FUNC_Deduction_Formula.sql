SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Deduction_Formula] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'Single' when @iIntEnum = 1 then 'Multiple' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
