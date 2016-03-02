SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--drop proc [ExtenderFormSaveField]
create procedure [dbo].[ExtenderFormSaveField] 
    @I_vFormID char(15),	
	@I_vRecordID  int,
	@I_vRecordType int, 
	@I_vWindowNumber int,
	@I_vFieldNumber int,
	@I_vLineItem int,
	@I_vFieldValue char(255),
	@O_vErrorCode int output
as

declare @FieldID int
declare @FieldPrompt char(30)
declare @FieldType int
declare @DecimalPlaces int
declare @MaxChars int
declare @CurrencyValue numeric(19,5)
declare @NumberValue numeric(19,0)
declare @ShortString char(30)
declare @DateValue datetime
declare @Error char(255)
declare @result int

set nocount on


exec ExtenderFormGetFieldID @I_vFormID, @I_vRecordType, @I_vWindowNumber, @I_vFieldNumber, @FieldID output
exec ExtenderGetFieldSettings @FieldID, @FieldPrompt output, @FieldType output, @DecimalPlaces output, @MaxChars output

if @FieldPrompt <> ''
	begin
		-- short string
		if @FieldType = 2
			begin
				select @ShortString = substring(@I_vFieldValue, 1, @MaxChars)
				exec ExtenderFormSaveString @I_vRecordID, @FieldID, @I_vLineItem, @ShortString, @O_vErrorCode output
			end
		-- lookup
		if @FieldType = 8
			begin
				select @ShortString = upper(@I_vFieldValue)
				exec ExtenderFormSaveString @I_vRecordID, @FieldID, @I_vLineItem, @ShortString, @O_vErrorCode output
			end
		-- linked lookup
		if @FieldType = 18
			begin
				select @ShortString = upper(@I_vFieldValue)
				exec ExtenderFormSaveString @I_vRecordID, @FieldID, @I_vLineItem, @ShortString, @O_vErrorCode output
			end
		-- long string, email, file, folder, phone
		if @FieldType = 1 or @FieldType = 17 or @FieldType = 11 or @FieldType = 12 or @FieldType = 16
			begin
				exec ExtenderFormSaveString @I_vRecordID, @FieldID, @I_vLineItem, @I_vFieldValue, @O_vErrorCode output
			end
		-- date
		if @FieldType = 3 -- validation for this done in parameter value procedure in C#
			begin
				select @DateValue = cast (@I_vFieldValue as datetime)
				exec ExtenderFormSaveDate @I_vRecordID, @FieldID, @I_vLineItem, @DateValue, @O_vErrorCode output
			end
		-- currency, percentage, quantity
		if @FieldType = 4 or @FieldType = 9 or @FieldType = 10
			begin
				select @CurrencyValue = cast(@I_vFieldValue as numeric(19,5))
				exec ExtenderFormSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @O_vErrorCode output
			end
		-- checkbox
		if @FieldType = 7
			begin
				if upper(@I_vFieldValue) = 'Y' or upper(@I_vFieldValue) = 'YES' or upper(@I_vFieldValue) = 'T' or upper(@I_vFieldValue) = 'TRUE' or @I_vFieldValue = '1'
					select @CurrencyValue = 1
				else
					select @CurrencyValue = 0
				exec ExtenderFormSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @O_vErrorCode output
			end
		-- time
		if @FieldType = 14 -- validation for this done in parameter value procedure in c#
			begin
				select @DateValue = cast(@I_vFieldValue as datetime)
				exec ExtenderFormSaveTime @I_vRecordID, @FieldID, @I_vLineItem, @DateValue, @O_vErrorCode output
			end
		-- number
		if @FieldType = 5
			begin
				select @CurrencyValue = cast(@I_vFieldValue as int)
				exec ExtenderFormSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @O_vErrorCode output
			end
		-- list
		if @FieldType = 6
			begin
				-- validate the list item
				exec ExtenderGetListItemNumber @FieldID, @I_vFieldValue, @CurrencyValue output
				if(@CurrencyValue = 0)
					begin
						select @O_vErrorCode = 1
					end
				else
					begin
						exec ExtenderFormSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @O_vErrorCode output
					end
			end
		-- account
		if @FieldType = 15
			begin
				select @CurrencyValue = ACTINDX from GL00105 where ACTNUMST = @I_vFieldValue
				if(@CurrencyValue is null)
				begin
					select @O_vErrorCode = 1
				end
				else
				begin
					exec ExtenderFormSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @O_vErrorCode output
				end
			end
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderFormSaveField] TO [DYNGRP]
GO
