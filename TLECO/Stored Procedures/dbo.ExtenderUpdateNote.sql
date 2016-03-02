SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderUpdateNote]  
	@I_vExtenderType int,
	@I_vRecordID int,
	@I_vWindowNumber  int,       
	@I_vKeyString  char(255),
	@I_vNodeID	int = 0,
	@I_vNote char(255),
	@I_vNoteType int
as

-- update the note
update EXT01500
	set TXTFIELD = @I_vNote, Note_Type = @I_vNoteType, USERID = 'sa'
	where Extender_Type = @I_vExtenderType and Extender_Record_ID = @I_vRecordID and Window_Number = @I_vWindowNumber and LNITMSEQ = @I_vNodeID
GO
GRANT EXECUTE ON  [dbo].[ExtenderUpdateNote] TO [DYNGRP]
GO
