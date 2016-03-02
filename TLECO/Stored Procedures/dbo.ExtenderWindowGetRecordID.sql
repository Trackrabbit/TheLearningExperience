SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderWindowGetRecordID]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@O_iRecordID int output
as

declare @RecordID int

select @RecordID = 0

select @RecordID = Extender_Record_ID from EXT01100 where Extender_Window_ID = @I_vWindowID 
and Extender_Key_Values_1 = @I_vKey1
and Extender_Key_Values_2 = @I_vKey2
and Extender_Key_Values_3 = @I_vKey3
and Extender_Key_Values_4 = @I_vKey4
and Extender_Key_Values_5 = @I_vKey5

select @O_iRecordID = @RecordID
return (@O_iRecordID)
GO
GRANT EXECUTE ON  [dbo].[ExtenderWindowGetRecordID] TO [DYNGRP]
GO
