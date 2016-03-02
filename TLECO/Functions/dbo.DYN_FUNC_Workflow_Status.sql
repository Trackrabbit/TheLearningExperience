SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Workflow_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Not Submitted' when @iIntEnum = 3 then 'No Action Needed' when @iIntEnum = 4 then 'Pending User Action' when @iIntEnum = 5 then 'Recalled' when @iIntEnum = 6 then 'Completed' when @iIntEnum = 7 then 'Rejected' when @iIntEnum = 9 then 'Not Activated' else ''  end  RETURN(@oVarcharValuestring)  END 
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Workflow_Status] TO [DYNGRP]
GO
