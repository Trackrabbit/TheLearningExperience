SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Base_Step_Increases_On] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Hire Date' when @iIntEnum = 2 then 'Adjusted Hire Date' when @iIntEnum = 3 then 'Seniority Date' when @iIntEnum = 4 then 'Manual' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
