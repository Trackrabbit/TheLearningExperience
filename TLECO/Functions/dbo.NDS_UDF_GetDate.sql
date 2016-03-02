SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[NDS_UDF_GetDate] (@cdt datetime)
  RETURNS nvarchar(20)
 AS 
BEGIN
  DECLARE @FinalStr AS nvarchar(20)
  SET @FinalStr = RTRIM(CAST(DATEPART(month , @cdt) AS char(2))) + '/' +
                  RTRIM(CAST(DATEPART(day   , @cdt) AS char(2))) + '/' + 
                  RTRIM(CAST(DATEPART(year  , @cdt) AS char(4)))
  RETURN @FinalStr
END
GO
GRANT EXECUTE ON  [dbo].[NDS_UDF_GetDate] TO [DYNGRP]
GO
