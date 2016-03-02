SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderNoteDeleteAll]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @KeyString char(255)
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @windowType int

set nocount on

declare @RecordID int

if @I_vWindowID = '' or @I_vKey1 = ''
	begin
		select @O_iErrorState = 25003
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		if dbo.ExtenderDoesWindowExist(@I_vWindowID) = 0
			begin
				select @O_iErrorState = 25057
				exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
			end
		else
			begin
				exec ExtenderWindowGetRecordID @I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @RecordID output
				delete EXT01500 where Extender_Record_ID = @RecordID and Extender_Type = 1
				-- check if this is a note window or a field entry window
				select @windowType = Extender_Window_Type from EXT20100 where Extender_Window_ID = @I_vWindowID
				if @windowType <> 1
				begin
					delete EXT01100 where Extender_Record_ID = @RecordID
				end
			end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderNoteDeleteAll] TO [DYNGRP]
GO
