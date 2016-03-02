SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderWindowSaveField]  
	@I_vWindowID  char(15),    
	@I_vRecordID  int,	
	@I_vRecordType int,
	@I_vWindowNumber int,
	@I_vFieldNumber int,
	@I_vLineItem int,
	@I_vFieldValue char(255),
	@O_vErrorCode int output
as

declare @FieldPrompt char(30)
declare @FieldType int
declare @DecimalPlaces int
declare @MaxChars int
declare @CurrencyValue numeric(19,5)
declare @NumberValue numeric(19,0)
declare @ShortString char(30)
declare @DateValue datetime
declare @FieldID int
declare @ErrorCode int

set nocount on

exec ExtenderWindowGetFieldID @I_vWindowID, @I_vRecordType, @I_vWindowNumber, @I_vFieldNumber, @FieldID output
exec ExtenderGetFieldSettings @FieldID, @FieldPrompt output, @FieldType output, @DecimalPlaces output, @MaxChars output

--check that field exists
if @FieldPrompt <> ''
	begin
		select @ErrorCode = 0
		-- short string
		if @FieldType = 2
			begin
				if @MaxChars is null
					begin
						select @MaxChars = 30
					end
				select @ShortString = substring(@I_vFieldValue, 1, @MaxChars)
				exec ExtenderWindowSaveString @I_vRecordID, @FieldID, @I_vLineItem, @ShortString, @ErrorCode output
			end
		-- lookup
		if @FieldType = 8
			begin
				select @ShortString = upper(@I_vFieldValue)
				exec ExtenderWindowSaveString @I_vRecordID, @FieldID, @I_vLineItem, @ShortString, @ErrorCode output
			end
		-- linked lookup
		if @FieldType = 18
			begin
				select @ShortString = upper(@I_vFieldValue)
				exec ExtenderWindowSaveString @I_vRecordID, @FieldID, @I_vLineItem, @ShortString, @ErrorCode output
			end
		-- long string, email, file, folder, phone
		if @FieldType = 1 or @FieldType = 17 or @FieldType = 11 or @FieldType = 12 or @FieldType = 16
			begin
				exec ExtenderWindowSaveString @I_vRecordID, @FieldID, @I_vLineItem, @I_vFieldValue, @ErrorCode output
			end
		-- date
		if @FieldType = 3
			begin
				select @DateValue = cast(@I_vFieldValue as datetime)
				exec ExtenderWindowSaveDate @I_vRecordID, @FieldID,  @I_vLineItem, @DateValue, @ErrorCode output
			end
		-- currency, percentage, quantity
		if @FieldType = 4 or @FieldType = 9 or @FieldType = 10
			begin
				select @CurrencyValue = cast(@I_vFieldValue as numeric(19,5))
				exec ExtenderWindowSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @ErrorCode output
			end
		-- checkbox
		if @FieldType = 7
			begin
				if upper(@I_vFieldValue) = 'Y' or upper(@I_vFieldValue) = 'YES' or upper(@I_vFieldValue) = 'T' or upper(@I_vFieldValue) = 'TRUE' or @I_vFieldValue = '1'
					select @CurrencyValue = 1
				else
					select @CurrencyValue = 0
				exec ExtenderWindowSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @ErrorCode output
			end
		-- time
		if @FieldType = 14
			begin
				select @DateValue = cast(@I_vFieldValue as datetime)
				exec ExtenderWindowSaveTime @I_vRecordID, @FieldID, @I_vLineItem, @DateValue, @ErrorCode output
			end
		-- number
		if @FieldType = 5
			begin
				select @CurrencyValue = cast(@I_vFieldValue as int)
				exec ExtenderWindowSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @ErrorCode output
			end
		-- list
		if @FieldType = 6
			begin
				exec ExtenderGetListItemNumber @FieldID, @I_vFieldValue, @CurrencyValue output
				if @CurrencyValue = 0
					begin
						select @O_vErrorCode = 1
					end
				else
					begin
						exec ExtenderWindowSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @ErrorCode output
					end
			end
		-- account
		if @FieldType = 15
			begin
				select @CurrencyValue = ACTINDX from GL00105 where ACTNUMST = @I_vFieldValue
				if @CurrencyValue = 0
					begin
						select @O_vErrorCode = 1
					end
				else
					begin
						exec ExtenderWindowSaveNumber @I_vRecordID, @FieldID, @I_vLineItem, @CurrencyValue, @ErrorCode output
					end
			end
		if(@ErrorCode <> 0)
			select @O_vErrorCode = @ErrorCode
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderWindowSaveField] TO [DYNGRP]
GO
