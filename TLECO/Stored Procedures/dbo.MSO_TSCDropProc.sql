SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[MSO_TSCDropProc]
  	@table VARCHAR(251)
AS
DECLARE @cmd varchar(8000)
SET @table = LTRIM(RTRIM(@table))
IF NOT EXISTS (SELECT * FROM sysobjects WHERE type = 'P' and name LIKE 'zDP_' + @table + '%') 
BEGIN
	RETURN
END
SET @cmd = 'DROP PROC ';
SELECT @cmd = @cmd + name + ',' FROM sysobjects WHERE type = 'P' and name LIKE 'zDP_' + @table + '%';
SET @cmd = LEFT(@cmd, LEN(@cmd)-1)
EXEC (@cmd)
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCDropProc] TO [DYNGRP]
GO
