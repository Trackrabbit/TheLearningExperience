SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetNoteTypeID]
	@I_vExtenderType	int,
	@I_vExtenderID		char(15),
	@I_vWindowNumber	int,
	@I_vNoteType		char(65),
	@I_vNodeTypeID		int = 0 out
as
	if(select count(*) from EXT43204 where Extender_Type = @I_vExtenderType and Extender_ID = @I_vExtenderID and Note_Type_Description = @I_vNoteType) <> 0
	begin
		select @I_vNodeTypeID = LNITMSEQ from EXT43204 where Extender_Type = @I_vExtenderType and Extender_ID = @I_vExtenderID and Note_Type_Description = @I_vNoteType
	end
 
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetNoteTypeID] TO [DYNGRP]
GO
