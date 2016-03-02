SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Ref_Source_DDL] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Word of Mouth' when @iIntEnum = 2 then 'Referred to by an Employee' when @iIntEnum = 3 then 'Referred to by an Agency' when @iIntEnum = 4 then 'Newspaper' when @iIntEnum = 5 then 'Other' when @iIntEnum = 6 then 'Internet' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
