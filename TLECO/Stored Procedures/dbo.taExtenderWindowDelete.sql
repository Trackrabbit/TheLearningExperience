SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderWindowDelete]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @RecordID int
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int

set nocount on

-- check required fields
if @I_vWindowID = '' or @I_vKey1 = ''
	begin
		select @O_iErrorState = 25001
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		if dbo.ExtenderDoesWindowExist(@I_vWindowID) = 0
			begin
				select @O_iErrorState = 25053
				exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
			end
		else
			begin
				exec ExtenderWindowGetRecordID @I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @RecordID output
				delete EXT01100 where Extender_Record_ID = @RecordID
				delete EXT01101 where Extender_Record_ID = @RecordID
				delete EXT01102 where Extender_Record_ID = @RecordID
				delete EXT01103 where Extender_Record_ID = @RecordID
				delete EXT01104 where Extender_Record_ID = @RecordID
				delete EXT01110 where Extender_Record_ID = @RecordID
				delete EXT01111 where Extender_Record_ID = @RecordID
				delete EXT01112 where Extender_Record_ID = @RecordID
				delete EXT01113 where Extender_Record_ID = @RecordID
				delete EXT01114 where Extender_Record_ID = @RecordID
				delete EXT01500 where Extender_Record_ID = @RecordID
			end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderWindowDelete] TO [DYNGRP]
GO
