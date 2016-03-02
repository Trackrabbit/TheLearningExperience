SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderWindowSaveDate]  
	@I_vRecordID  int,	
	@I_vFieldID int,
	@I_vLineItem int,
	@I_vDateValue datetime,
	@O_IErrorCode int output
as

declare @DateValue datetime

set nocount on

select @DateValue = '1900-01-01'
select @O_IErrorCode = 0
if @I_vDateValue is not null
	begin
		select @DateValue = @I_vDateValue
	end

if @I_vLineItem = 0
	begin
		if (select count(*) from EXT01102 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID) = 0 
			begin
				insert into EXT01102 (Extender_Record_ID, Field_ID, DATE1)
				values (@I_vRecordID, @I_vFieldID, @DateValue)
			end
		else
			begin
				update EXT01102 set DATE1 = @DateValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID
			end
	end 
else
	begin
		if (select count(*) from EXT01112 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem) = 0 
			begin
				insert into EXT01112 (Extender_Record_ID, LNITMSEQ, Field_ID, DATE1)
				values (@I_vRecordID, @I_vLineItem, @I_vFieldID, @DateValue)
			end
		else
			begin
				update EXT01112 set DATE1 = @DateValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem
			end
	end 
GO
GRANT EXECUTE ON  [dbo].[ExtenderWindowSaveDate] TO [DYNGRP]
GO
