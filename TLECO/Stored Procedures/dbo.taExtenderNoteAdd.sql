SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderNoteAdd]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@I_vNote char(255),
	@I_vNoteType char(65) = '',
	@I_vNoteID	int = 0,
	@I_vUpdateIfExists int = 1,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @RecordID int
declare @WindowID int
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @noteType int = 0

set nocount on

if @I_vWindowID = '' or @I_vKey1 = '' or @I_vNote = ''
	begin
		select @O_iErrorState = 25005
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		return @O_iErrorState
	end
else
	begin
		if dbo.ExtenderDoesWindowExist(@I_vWindowID) = 0
			begin
				select @O_iErrorState = 25059
				exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				return @O_iErrorState
			end
		else
			begin
				exec ExtenderWindowGetRecordID @I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @RecordID output
				if @RecordID = 0
					begin
						select @RecordID = isnull(MAX(Extender_Record_ID), 0) + 1 from EXT01100
						insert into EXT01100 
							(Extender_Window_ID, Extender_Record_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, 
							Extender_Key_Values_5, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, NOTEINDX)
						values
							(@I_vWindowID, @RecordID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, dbo.StripTimeFromDate(getdate()), '', dbo.StripTimeFromDate(getdate()), '', 0)
					end
				if(@I_vNoteID = 0)
				begin
					exec dbo.ExtenderGetNextNoteNumber 1, @RecordID, 0, @I_vNoteID out 
				end
				if(@I_vNoteType <> '')
				begin
					exec dbo.ExtenderGetNoteTypeID 1,  @I_vWindowID, 0, @I_vNoteType, @noteType out
					if(@noteType = 0)
					begin
						select @O_iErrorState = 25104
						exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
						return @O_iErrorState
					end
				end
				if exists(select top 1 * from EXT01500 where Extender_Record_ID = @RecordID and Extender_Type = 1 and Window_Number = 0 and LNITMSEQ = @I_vNoteID)
				begin
					if(@I_vUpdateIfExists = 0)
						begin
							select @O_iErrorState = 25103
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							return @O_iErrorState
						end	
					else
						begin
							exec dbo.ExtenderUpdateNote 1, @RecordID, 0, '', @I_vNoteID, @I_vNote, @noteType
						end
				end
				else
				begin
					exec ExtenderSaveNote 1, @RecordID, 0, '', @I_vNote, @I_VNoteID, @noteType
				end
			end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderNoteAdd] TO [DYNGRP]
GO
