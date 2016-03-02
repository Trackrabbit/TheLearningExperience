SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[SplitDelimitedString](@separator char(1), @toSplit varchar(8000)) RETURNS @results TABLE (StrPiece varchar(8000)) AS BEGIN  DECLARE @MAX_LENGTH int  SET @MAX_LENGTH = 8000  DECLARE @startIdx int  DECLARE @endIdx int  DECLARE @done int  DECLARE @tempResult varchar(8000)  SET @startIdx = -1  SET @endIdx = @MAX_LENGTH  SET @done = 0  WHILE (@done = 0)  BEGIN  SELECT @endIdx = CHARINDEX(@separator, @toSplit, @startIdx + 1)  IF (@endIdx = 0)  BEGIN  SET @done = 1  SET @endIdx = @MAX_LENGTH  END  IF (@startIdx <> 0)  BEGIN  SELECT @tempResult = LTRIM(RTRIM(SUBSTRING(@toSplit, @startIdx + 1, @endIdx - @startIdx - 1)))  INSERT INTO @results SELECT @tempResult  END  SELECT @startIdx = CHARINDEX(@separator, @toSplit, @startIdx + 1)  END  RETURN END    
GO
GRANT SELECT ON  [dbo].[SplitDelimitedString] TO [rpt_all user]
GO
