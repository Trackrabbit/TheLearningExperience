SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[MSO_TSCCopyTable]
(
	@TableNameSrc		varchar(8000),
	@TableNameDst		varchar(8000),
	@FieldMap			varchar(8000)
)
	RETURNS				varchar(8000) AS 
BEGIN
	DECLARE @cmd varchar(8000)
	SET @cmd = 
		' INSERT INTO ' + @TableNameDst + 
		' ( ' +
			dbo.[MSO_TSCGetTableColumnList](@TableNameDst) +
		' ) ' +
		' SELECT ' +
			dbo.[MSO_TSCGetSourceColumnList](@TableNameSrc, @TableNameDst, @FieldMap) +
		' FROM ' + @TableNameSrc
	RETURN @cmd
END
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCCopyTable] TO [DYNGRP]
GO
