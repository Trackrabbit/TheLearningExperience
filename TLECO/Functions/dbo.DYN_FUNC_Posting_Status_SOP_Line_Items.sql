SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Posting_Status_SOP_Line_Items] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 0 then 'Unposted' when @iIntEnum = 2 then 'Posted' when @iIntEnum = 3 then 'Posted With Error' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Posting_Status_SOP_Line_Items] TO [DYNGRP]
GO
