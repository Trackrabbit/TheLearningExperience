SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[seeStringToTable] (  @String VARCHAR(max),   @Delimeter char(1),     @TrimSpace bit )       RETURNS @Table TABLE ( [Val] VARCHAR(4000) ) AS BEGIN  DECLARE @Val    VARCHAR(4000)  WHILE LEN(@String) > 0  BEGIN  SET @Val    = LEFT(@String,  ISNULL(NULLIF(CHARINDEX(@Delimeter, @String) - 1, -1),  LEN(@String)))  SET @String = SUBSTRING(@String,  ISNULL(NULLIF(CHARINDEX(@Delimeter, @String), 0),  LEN(@String)) + 1, LEN(@String))  IF @TrimSpace = 1 Set @Val = LTRIM(RTRIM(@Val))  INSERT INTO @Table ( [Val] )  VALUES ( @Val )  END  RETURN END   
GO
GRANT SELECT ON  [dbo].[seeStringToTable] TO [rpt_all user]
GO
