SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[MSO_TSCGetSourceColumnName] (@key varchar(130), @map varchar(8000))
	RETURNS varchar(130) 
AS BEGIN
	DECLARE 
		@map_reverse as varchar(8000),
		@val as varchar(8000), 
		@pos_key as smallint,
		@pos_key_rev as smallint,
		@pos_b as smallint,
		@map_len as smallint,
		@source_table_a as smallint,
		@source_table_b as smallint,
		@source_table_len as smallint,
		@source_table_pos_a as smallint,
		@source_table_pos_b as smallint
	SET @key			= '[' + replace(replace(ltrim(rtrim(@key)), '[', ''), ']', '') + ']'
	SET @map			= ltrim(rtrim(@map))
	SET @map_reverse	= reverse(@map)
	SET @map_len		= len(@map)
	SET @pos_key		= CHARINDEX (@key, @map)
	SET @pos_key_rev	= @map_len - (@pos_key) + 2
	set @source_table_b = charindex(']', @map_reverse, @pos_key_rev)
	set @source_table_a = charindex('[', @map_reverse, @source_table_b)
	set @source_table_pos_a = @map_len - @source_table_a + 1
	set @source_table_pos_b = @map_len - @source_table_b + 1 + 1
	set @source_table_len	= @source_table_pos_b - @source_table_pos_a
	return	
		replace(
			replace(
				substring(@map, @source_table_pos_a, @source_table_len), 
				'[', 
				''
			),
			']',
			''
		)
END
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCGetSourceColumnName] TO [DYNGRP]
GO
