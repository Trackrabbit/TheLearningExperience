SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetFieldSettings]  
	@I_vFieldID int,
	@O_vFieldPrompt char(255) output,
	@O_vFieldType int output,
	@O_vDecimalPlaces int output,
	@O_vMaxChars int output
as

declare @FieldType int
declare @DecimalPlaces int
declare @MaxChars int
declare @FieldPrompt char(255)

select @DecimalPlaces = DECPLCUR, @FieldPrompt = FIELDNAM, @FieldType = FIELDTYPE, @MaxChars = Max_Characters from EXT20010 where Field_ID = @I_vFieldID

set @O_vFieldPrompt = @FieldPrompt
set @O_vFieldType = @FieldType
set @O_vDecimalPlaces = @DecimalPlaces 
set @O_vMaxChars = @MaxChars 
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetFieldSettings] TO [DYNGRP]
GO
