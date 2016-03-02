SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_PO_Type] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Standard' when @iIntEnum = 2 then 'Drop-Ship' when @iIntEnum = 3 then 'Blanket' when @iIntEnum = 4 then 'Drop-Ship Blanket' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_PO_Type] TO [DYNGRP]
GO
