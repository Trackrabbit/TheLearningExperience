SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Asset_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'New' when @iIntEnum = 2 then 'Used' when @iIntEnum = 3 then 'Leased' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
