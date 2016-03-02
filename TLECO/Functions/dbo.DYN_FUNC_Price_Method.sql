SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Price_Method] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Currency Amount' when @iIntEnum = 2 then '% of List Price' when @iIntEnum = 3 then '% Markup - Current Cost' when @iIntEnum = 4 then '% Markup - Standard Cost' when @iIntEnum = 5 then '% Margin - Current Cost' when @iIntEnum = 6 then '% Margin - Standard Cost' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Price_Method] TO [DYNGRP]
GO
