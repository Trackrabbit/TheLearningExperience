SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[NDS_TRKEML_ReadTextFile]
  @filename nvarchar(200), @content nvarchar(4000) OUTPUT
 AS 
 SET @filename = char(34) + @filename + char(34) 
  SET nocount ON
  
  CREATE TABLE #file_contents
  (
    line_number int IDENTITY,
    line_contents nvarchar(4000)
  )
  
  DECLARE @emailBody nvarchar(4000), @new_line char(2), @cmd nvarchar(205)
  SET @new_line = char(13) + char(10)
  SET @cmd = 'type ' + @filename
  --read into a table
  INSERT #file_contents
  EXEC master.dbo.xp_cmdshell @cmd
  --line break is read as "null". Put back line break and form a single line
  SELECT @emailBody = ISNULL(@emailBody, '') + @new_line + ISNULL(line_contents, '') FROM #file_contents
  DROP TABLE #file_contents
  --return the result
  SET @content = @emailBody
  
  SET nocount OFF
GO
GRANT EXECUTE ON  [dbo].[NDS_TRKEML_ReadTextFile] TO [DYNGRP]
GO
