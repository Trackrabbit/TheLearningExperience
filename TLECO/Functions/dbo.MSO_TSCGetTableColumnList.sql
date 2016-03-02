SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[MSO_TSCGetTableColumnList] (@tableName varchar(130))
	RETURNS varchar(8000) 
AS BEGIN
	DECLARE @columnList as varchar(8000)
	IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = @tableName AND type ='U')
		RETURN NULL
	SET @columnList = '';
	select @columnList = @columnList + '[' + rtrim(col.name) + '],'
	from syscolumns col
	join sysobjects tbl on tbl.id = col.id
	where 
		tbl.name = @tableName AND 
		col.name not in
		(
			select COLUMN_NAME 
			from INFORMATION_SCHEMA.COLUMNS
			where 
				TABLE_NAME = @tableName and
				TABLE_SCHEMA = 'dbo' and 
				COLUMNPROPERTY(object_id(TABLE_NAME), COLUMN_NAME, 'IsIdentity') = 1
						)
	order by col.colorder
		IF len(@columnList) > 0
		SET @columnList = left(@columnList, len(@columnList) - 1)
	RETURN @columnList
END
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCGetTableColumnList] TO [DYNGRP]
GO
