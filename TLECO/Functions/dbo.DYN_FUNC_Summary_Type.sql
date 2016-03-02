SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Summary_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Calendar' when @iIntEnum = 2 then 'Fiscal' else ''  end  RETURN(@oVarcharValuestring)  END 
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Summary_Type] TO [DYNGRP]
GO
