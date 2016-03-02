SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDateAsString](@DateToConvert datetime) RETURNS VARCHAR(8) AS  BEGIN  RETURN RIGHT ('0000'+ CAST (DATENAME(yyyy,@DateToConvert) AS varchar), 4) + RIGHT ('00'+ CAST (month(@DateToConvert) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@DateToConvert) AS varchar), 2)   END   
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDateAsString] TO [rpt_all user]
GO
