SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[MSO_TSCClearTable]
   	@table VARCHAR(251)
AS
	SET @table = LTRIM(RTRIM(@table))
		EXEC('DELETE ' + @table)
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCClearTable] TO [DYNGRP]
GO
