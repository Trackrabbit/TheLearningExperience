SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Reject_Reason] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Testing' when @iIntEnum = 2 then 'Interview' when @iIntEnum = 3 then 'References' when @iIntEnum = 4 then 'Experience' when @iIntEnum = 5 then 'Education' when @iIntEnum = 6 then 'Other' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
