SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[NDS_UDF_GetTime] (@cdt datetime)
  RETURNS nvarchar(50)
 AS 
BEGIN
  DECLARE @FinalStr AS nvarchar(50)
  SET @FinalStr = '01/01/1900 ' +
                  RTRIM(CAST(DATEPART(hour  , @cdt) AS char(2))) + ':' +
                  RTRIM(CAST(DATEPART(minute, @cdt) AS char(2))) + ':' +
                  RTRIM(CAST(DATEPART(second, @cdt) AS char(2))) + ' ' +
                  RIGHT(RTRIM(CAST(@cdt AS char(30))), 2)
  RETURN @FinalStr
END
GO
GRANT EXECUTE ON  [dbo].[NDS_UDF_GetTime] TO [DYNGRP]
GO
