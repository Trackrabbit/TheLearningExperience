SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_FLSA_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Exempt' when @iIntEnum = 2 then 'Non Exempt - Salary' when @iIntEnum = 3 then 'Non Exempt - Hourly' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
