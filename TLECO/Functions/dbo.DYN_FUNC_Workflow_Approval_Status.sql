SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Workflow_Approval_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Not Submitted' when @iIntEnum = 2 then 'Submitted' when @iIntEnum = 3 then 'Not Needed' when @iIntEnum = 4 then 'Pending Approval' when @iIntEnum = 5 then 'Pending Changes' when @iIntEnum = 6 then 'Approved' when @iIntEnum = 7 then 'Rejected' when @iIntEnum = 8 then 'Ended' when @iIntEnum = 9 then 'Not Enabled' when @iIntEnum = 10 then 'Disabled' else ''  end  RETURN(@oVarcharValuestring)  END 
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Workflow_Approval_Status] TO [DYNGRP]
GO
