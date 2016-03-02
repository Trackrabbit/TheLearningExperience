SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Requisition_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Saved' when @iIntEnum = 2 then 'Submitted' when @iIntEnum = 3 then 'Partially Purchased' when @iIntEnum = 4 then 'Purchased' when @iIntEnum = 5 then 'Canceled' when @iIntEnum = 6 then 'Voided' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Requisition_Status] TO [DYNGRP]
GO
