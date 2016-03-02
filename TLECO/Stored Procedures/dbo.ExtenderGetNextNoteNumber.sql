SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetNextNoteNumber] 
	@I_vExtenderType int,
	@I_vRecordID int,
	@I_vWindowNumber  int,
	@I_vNoteID int out
as

-- get the next note number
if (select count(*) from EXT01500 where Extender_Record_ID = @I_vRecordID and Extender_Type = @I_vExtenderType and Window_Number = @I_vWindowNumber) = 0
	begin
		select @I_vNoteID = 1
	end
else
	begin
		select @I_vNoteID = max(LNITMSEQ) + 1 from EXT01500 where Extender_Record_ID = @I_vRecordID and Extender_Type = @I_vExtenderType and Window_Number = @I_vWindowNumber
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetNextNoteNumber] TO [DYNGRP]
GO
