SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_GL_Header_Valid] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Valid Account Number' when @iIntEnum = 2 then 'Valid Journal Entry' when @iIntEnum = 3 then 'Valid Posting Date' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_GL_Header_Valid] TO [DYNGRP]
GO
