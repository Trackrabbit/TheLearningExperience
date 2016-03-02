SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Marital_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Married' when @iIntEnum = 2 then 'Single' when @iIntEnum = 3 then 'N/A' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
