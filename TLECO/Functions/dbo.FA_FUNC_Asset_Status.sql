SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Asset_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Active' when @iIntEnum = 2 then 'Deleted' when @iIntEnum = 3 then 'Partial Open' when @iIntEnum = 4 then 'Retired' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
