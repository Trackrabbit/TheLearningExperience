SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Averaging_Convention] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Half-Year' when @iIntEnum = 2 then 'Modified Half-Year' when @iIntEnum = 3 then 'Mid-Month (1st)' when @iIntEnum = 4 then 'Mid-Month (15th)' when @iIntEnum = 5 then 'Mid-Quarter' when @iIntEnum = 6 then 'Next Month' when @iIntEnum = 7 then 'Full Month' when @iIntEnum = 8 then 'Next Year' when @iIntEnum = 9 then 'Full Year' when @iIntEnum = 10 then 'Full Year All Year' when @iIntEnum = 11 then 'None' when @iIntEnum = 12 then 'Next Period' when @iIntEnum = 13 then 'Full Period' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
