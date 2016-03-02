SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Return_Record_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Open' when @iIntEnum = 2 then 'Closed' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
