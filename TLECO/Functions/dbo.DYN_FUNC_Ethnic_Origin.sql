SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Ethnic_Origin] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'White' when @iIntEnum = 2 then 'American Indian or Alaska Native' when @iIntEnum = 3 then 'Black' when @iIntEnum = 4 then 'Asian or Pacific Islander' when @iIntEnum = 5 then 'Hispanic' when @iIntEnum = 6 then 'Other' when @iIntEnum = 7 then 'N/A' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Ethnic_Origin] TO [DYNGRP]
GO
