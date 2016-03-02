SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Contract_Period] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Days' when @iIntEnum = 2 then 'Months' when @iIntEnum = 3 then 'Years' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
