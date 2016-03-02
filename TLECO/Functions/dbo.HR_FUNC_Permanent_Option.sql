SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Permanent_Option] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'Included' when @iIntEnum = 1 then 'Not Included' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
