SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Workflow_Priority] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Low' when @iIntEnum = 2 then 'Normal' when @iIntEnum = 3 then 'High' else ''  end  RETURN(@oVarcharValuestring)  END 
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Workflow_Priority] TO [DYNGRP]
GO
