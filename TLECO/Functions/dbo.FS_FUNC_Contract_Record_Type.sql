SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_Contract_Record_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Quote' when @iIntEnum = 2 then 'Contract' when @iIntEnum = 3 then 'Template' when @iIntEnum = 4 then 'History' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
