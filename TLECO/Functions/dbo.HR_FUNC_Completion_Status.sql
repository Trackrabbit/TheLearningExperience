SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Completion_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Complete' when @iIntEnum = 2 then 'Incomplete_Ben' when @iIntEnum = 3 then 'Incomplete_Ded' when @iIntEnum = 4 then 'Incomplete_Both' when @iIntEnum = 5 then 'Incomplete_Both_Ben' when @iIntEnum = 6 then 'Incomplete_Both_Ded' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
