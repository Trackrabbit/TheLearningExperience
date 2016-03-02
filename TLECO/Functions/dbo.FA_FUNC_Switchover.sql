SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FA_FUNC_Switchover] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'No Switch' when @iIntEnum = 2 then 'Straight-Line' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
