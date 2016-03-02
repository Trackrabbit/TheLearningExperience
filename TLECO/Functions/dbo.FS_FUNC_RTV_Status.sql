SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[FS_FUNC_RTV_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Entered' when @iIntEnum = 2 then 'Ready To Ship' when @iIntEnum = 3 then 'Shipped' when @iIntEnum = 4 then 'Partial Rcv.' when @iIntEnum = 5 then 'Received' when @iIntEnum = 6 then 'Closed' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
