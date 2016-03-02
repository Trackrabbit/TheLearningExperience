SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderFormGetRecordID]  
	@I_vFormID  char(15),    
	@I_vKey1  char(15),
	@I_vKey2  char(15) = '',
	@O_iRecordID int output
as

declare @RecordID int

select @RecordID = 0

select @RecordID = Extender_Record_ID from EXT01200 where Extender_Form_ID = @I_vFormID 
and UD_Form_Field_ID = @I_vKey1
and UD_Form_Field_ID_2 = @I_vKey2

select @O_iRecordID = @RecordID
return (@O_iRecordID)
GO
GRANT EXECUTE ON  [dbo].[ExtenderFormGetRecordID] TO [DYNGRP]
GO
