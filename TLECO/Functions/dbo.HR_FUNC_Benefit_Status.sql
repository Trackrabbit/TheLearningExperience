SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Benefit_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Active' when @iIntEnum = 2 then 'Inactive' when @iIntEnum = 3 then 'Waived' when @iIntEnum = 4 then 'Ineligible' when @iIntEnum = 5 then 'COBRA' when @iIntEnum = 6 then 'Terminated' when @iIntEnum = 7 then 'FMLA' when @iIntEnum = 8 then 'Pending' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
