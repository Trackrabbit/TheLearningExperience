SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create procedure [dbo].[ExtenderFormSaveTime]  
	@I_vRecordID  int,	
	@I_vFieldID int,
	@I_vLineItem int, 
	@I_vTimeValue datetime,
	@O_IErrorCode int output
as

declare @TimeValue datetime

set nocount on

select @TimeValue = '1900-01-01'
select @O_IErrorCode = 0
if @I_vTimeValue is not null
	begin
		select @TimeValue = @I_vTimeValue
	end

if @I_vLineItem = 0
	begin
		if (select count(*) from EXT01204 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID) = 0 
			begin
				insert into EXT01204 (Extender_Record_ID, Field_ID, TIME1)
				values (@I_vRecordID, @I_vFieldID, @TimeValue)
			end
		else
			begin
				update EXT01204 set TIME1 = @TimeValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID
			end
	end
else
	begin
		if (select count(*) from EXT01214 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem) = 0 
			begin
				insert into EXT01214 (Extender_Record_ID, Window_Number, LNITMSEQ, Field_ID, TIME1)
				values (@I_vRecordID, 0, @I_vLineItem, @I_vFieldID, @TimeValue)
			end
		else
			begin
				update EXT01214 set TIME1 = @TimeValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem
			end
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderFormSaveTime] TO [DYNGRP]
GO
