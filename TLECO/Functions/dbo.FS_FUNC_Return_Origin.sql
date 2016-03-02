SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Return_Origin] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'None' when @iIntEnum = 2 then 'Service Call' when @iIntEnum = 3 then 'Sales Invoice' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
