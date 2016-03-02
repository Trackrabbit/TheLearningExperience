SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[HR_FUNC_Assignment_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Assigned' when @iIntEnum = 2 then 'Reserved' when @iIntEnum = 3 then 'On Hold with Pay and Benefits' when @iIntEnum = 4 then 'On Hold without Pay and Benefits' when @iIntEnum = 5 then 'Available' when @iIntEnum = 6 then 'Temporary' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
