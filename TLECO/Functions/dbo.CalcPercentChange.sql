SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[CalcPercentChange]  (  @Old float,  @New float ) RETURNS varchar(20)  BEGIN DECLARE @result varchar(20)  IF @Old <> 0 AND @New is not null  SELECT @result = CAST(CAST(abs(100 * (@New - @Old) / @Old) AS Numeric(16,2)) AS varchar(20)) + '%' ELSE  SELECT @result = '0.00%'  RETURN @result END   
GO
GRANT EXECUTE ON  [dbo].[CalcPercentChange] TO [DYNGRP]
GO
