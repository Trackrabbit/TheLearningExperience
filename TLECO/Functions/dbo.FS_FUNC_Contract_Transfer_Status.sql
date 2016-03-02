SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Contract_Transfer_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Not Transferred' when @iIntEnum = 2 then 'Transferred' when @iIntEnum = 3 then 'Auto-Renewed' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
