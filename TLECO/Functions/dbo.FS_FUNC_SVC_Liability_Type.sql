SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_SVC_Liability_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Straight-Line' when @iIntEnum = 2 then 'Block Time' when @iIntEnum = 3 then 'Retainage' when @iIntEnum = 4 then 'Based on Calls' when @iIntEnum = 5 then 'Metered' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
