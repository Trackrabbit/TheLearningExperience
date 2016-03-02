SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Valuation_Method] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'FIFO Perpetual' when @iIntEnum = 2 then 'LIFO Perpetual' when @iIntEnum = 3 then 'Average Perpetual' when @iIntEnum = 4 then 'FIFO Periodic' when @iIntEnum = 5 then 'LIFO Periodic' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Valuation_Method] TO [DYNGRP]
GO
