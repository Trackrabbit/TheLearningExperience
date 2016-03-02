SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_SVC_PM_Month] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'January' when @iIntEnum = 2 then 'February' when @iIntEnum = 3 then 'March' when @iIntEnum = 4 then 'April' when @iIntEnum = 5 then 'May' when @iIntEnum = 6 then 'June' when @iIntEnum = 7 then 'July' when @iIntEnum = 8 then 'August' when @iIntEnum = 9 then 'September' when @iIntEnum = 10 then 'October' when @iIntEnum = 11 then 'November' when @iIntEnum = 12 then 'December' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
