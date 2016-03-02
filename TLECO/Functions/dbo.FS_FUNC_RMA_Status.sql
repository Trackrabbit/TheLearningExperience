SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_RMA_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Repair' when @iIntEnum = 2 then 'Credit' when @iIntEnum = 3 then 'Replace' when @iIntEnum = 4 then 'Cross-Ship' when @iIntEnum = 5 then 'None' when @iIntEnum = 6 then 'None' when @iIntEnum = 7 then 'Open RTV or Work Order exists' when @iIntEnum = 8 then 'Received' when @iIntEnum = 10 then 'Closed' when @iIntEnum = 20 then 'Voided' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
