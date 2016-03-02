SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Lease_Type_Lease] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Capital' when @iIntEnum = 2 then 'Operating' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
