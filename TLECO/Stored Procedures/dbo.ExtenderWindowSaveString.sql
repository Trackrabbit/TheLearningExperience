SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderWindowSaveString]  
	@I_vRecordID  int,	
	@I_vFieldID int,
	@I_vLineItem int,
	@I_vStringValue char(255),
	@O_IErrorCode int output
as
 
declare @StringValue char(255)

set nocount on

select @StringValue = ''
select @O_IErrorCode = 0
if @I_vStringValue is not null
	begin
		select @StringValue = @I_vStringValue
	end

if @I_vLineItem = 0
	begin
		if (select count(*) from EXT01101 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID) = 0 
			begin
				insert into EXT01101 (Extender_Record_ID, Field_ID, STRGA255)
				values (@I_vRecordID, @I_vFieldID, @StringValue)
			end
		else
			begin
				update EXT01101 set STRGA255 = @StringValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID
			end
	end
else
	begin
		if (select count(*) from EXT01111 where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem) = 0 
			begin
				insert into EXT01111 (Extender_Record_ID, LNITMSEQ, Field_ID, STRGA255)
				values (@I_vRecordID, @I_vLineItem, @I_vFieldID, @StringValue)
			end
		else
			begin
				update EXT01111 set STRGA255 = @StringValue 
				where Extender_Record_ID = @I_vRecordID and Field_ID = @I_vFieldID and LNITMSEQ = @I_vLineItem
			end
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderWindowSaveString] TO [DYNGRP]
GO
