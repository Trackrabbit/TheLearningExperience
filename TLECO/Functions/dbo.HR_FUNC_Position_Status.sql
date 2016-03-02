SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Position_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Active' when @iIntEnum = 2 then 'Inactive' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
