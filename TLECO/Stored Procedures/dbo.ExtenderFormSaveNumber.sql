SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create procedure [dbo].[ExtenderFormSaveNumber]  
	@I_vRecordID  int,	
	@I_vFieldID int,
	@I_vLineItem int, 
	@I_vNumericValue numeric(19,5),
	@O_IErrorCode int output
as

declare @CurrencyValue numeric(19,5)

set nocount on

select @CurrencyValue = 0
select @O_IErrorCode = 0
if @I_vNumericValue is not null
	begin
		select @CurrencyValue = @I_vNumericValue
	end

if @I_vLineItem = 0
	begin
		if (select count(*) from EXT01203 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID) = 0 
			begin
				insert into EXT01203 (Extender_Record_ID, Field_ID, TOTAL, FUNCTAMT)
				values (@I_vRecordID, @I_vFieldID, @CurrencyValue, 0)
			end
		else
			begin
				update EXT01203 set TOTAL = @CurrencyValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID
			end
	end
else
	begin
		if (select count(*) from EXT01213 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem) = 0 
			begin
				insert into EXT01213 (Extender_Record_ID, Window_Number, LNITMSEQ, Field_ID, TOTAL, FUNCTAMT)
				values (@I_vRecordID, 0, @I_vLineItem, @I_vFieldID, @CurrencyValue, 0)
			end
		else
			begin
				update EXT01213 set TOTAL = @CurrencyValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem
			end
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderFormSaveNumber] TO [DYNGRP]
GO
