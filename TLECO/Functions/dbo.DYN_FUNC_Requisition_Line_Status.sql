SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Requisition_Line_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'New' when @iIntEnum = 2 then 'Ordered' when @iIntEnum = 3 then 'Canceled' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Requisition_Line_Status] TO [DYNGRP]
GO
