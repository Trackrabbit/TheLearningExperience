SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--drop procedure [dbo].[ExtenderSaveNote]  
create procedure [dbo].[ExtenderSaveNote]  
	@I_vExtenderType int,
	@I_vRecordID int,
	@I_vWindowNumber  int,       
	@I_vKeyString  char(255),
	@I_vNote char(255),
	@I_vNoteID	int = 0,
	@I_vNoteType int
as

-- create new detail note
if @I_vNoteID = 0
	begin
		select @I_vNoteID = max(LNITMSEQ) from EXT01500 where Extender_Type = @I_vExtenderType and Extender_Record_ID = @I_vRecordID and Window_Number = @I_vWindowNumber
		set @I_vNoteID = Case when @I_vNoteID IS NULL THEN 0 ELSE @I_vNoteID END
		set @I_vNoteID = @I_vNoteID + 1
	end
insert into EXT01500 
	(Extender_Type, Extender_Record_ID, Window_Number, LNITMSEQ, DATE1, TIME1, USERID, Note_Type, TXTFIELD)
values
	(@I_vExtenderType, @I_vRecordID, @I_vWindowNumber, @I_vNoteID, dbo.ExtenderGetCurrentDate(), dbo.ExtenderGetCurrentTime(), 'sa', @I_vNoteType, @I_vNote)
GO
GRANT EXECUTE ON  [dbo].[ExtenderSaveNote] TO [DYNGRP]
GO
