SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Status_Applicant] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Active' when @iIntEnum = 2 then 'Open' when @iIntEnum = 3 then 'Rejected' when @iIntEnum = 4 then 'Hired' when @iIntEnum = 5 then 'Other' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
