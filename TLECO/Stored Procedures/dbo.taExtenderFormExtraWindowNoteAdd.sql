SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--drop procedure taExtenderFormExtraWindowNoteAdd
create procedure [dbo].[taExtenderFormExtraWindowNoteAdd]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
	@I_vWindowNumber  int,
	@I_vNoteType char(65) = '',
	@I_vNote char(255),
	@I_vNoteID int = 0,
	@I_vUpdateIfExists int = 1,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @CreateOrUpdate int
declare @ExtraWindowType int
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @RecordID int
declare @Now datetime
declare @DateString char(10)
declare @TimeString char(8)
declare @noteType int
declare @noteSeq int

set nocount on

-- check required fields
if @I_vFormID = '' or @I_vRecordID = '' or @I_vWindowNumber = 0
	begin
		select @O_iErrorState = 25018
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25099
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
			-- check that form exists
			if dbo.ExtenderDoesFormExist(@I_vFormID) = 0
				begin
					select @O_iErrorState = 25019
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					-- check that extra window exists
					if (select count(*) from EXT20201 where Extender_Form_ID = @I_vFormID and Window_Number = @I_vWindowNumber and (Extra_Window_Type = 2 or Extra_Window_Type = 3)) = 0
						begin
							select @O_iErrorState = 25020
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
						end
					else
						begin
							exec ExtenderFormGetRecordID @I_vFormID, @I_vRecordID, @I_vRecordID2, @RecordID output
							if @RecordID = 0
								begin
									-- failed to find a record to attach this note to
									select @O_iErrorState = 25136
									exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									return @O_iErrorState
								end
							else
								begin
									-- get the extra window type
									select @ExtraWindowType = Extra_Window_Type from EXT20201 where Extender_Form_ID = @I_vFormID and Window_Number = @I_vWindowNumber
									if @ExtraWindowType = 2
										begin
											-- standard note
											if (select count(*) from EXT01500 where Extender_Record_ID = @RecordID and Window_Number = @I_vWindowNumber and LNITMSEQ = 1) = 0
												begin
													-- insert the note
													exec dbo.ExtenderSaveNote 2, @RecordID, @I_vWindowNumber, '', @I_vNote, 1, 0
												end
											else
												begin
													-- check if update if exists is set
													if(@I_vUpdateIfExists = 0)
														begin
															select @O_iErrorState = 25137
															exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
															return @O_iErrorState
														end	
													else
														begin
															-- update the note
															exec dbo.ExtenderUpdateNote 2, @RecordID, @I_vWindowNumber, '', 1, @I_vNote, 0
														end
												end
										end
									else
										begin
											-- note list
											if @I_vNoteType = ''
												begin
													-- note type is required for this window
													select @O_iErrorState = 25138
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
											else
												begin
													exec dbo.ExtenderGetNoteTypeID 2, @I_vFormID, @I_vWindowNumber, @I_vNoteType, @noteType out
													if @noteType is null
														begin
															-- note type does not exist
															select @O_iErrorState = 25139
															exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
															return @O_iErrorState
														end
													else
														begin
															if exists(select top 1 * from EXT01500 where Extender_Record_ID = @RecordID and Extender_Type = 2 and Window_Number = @I_vWindowNumber and LNITMSEQ = @I_vNoteID)
																begin
																	-- check update if exists
																	if(@I_vUpdateIfExists = 0)
																		begin
																			select @O_iErrorState = 25137
																			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
																			return @O_iErrorState
																		end	
																	else
																		begin
																			-- update the note
																			exec dbo.ExtenderUpdateNote 2, @RecordID, @I_vWindowNumber, '', @I_vNoteID, @I_vNote, @noteType
																		end
																end
															else
																begin
																	-- insert the note
																	exec dbo.ExtenderSaveNote 2, @RecordID, @I_vWindowNumber, '', @I_vNote, 0, @noteType
																end
														end
												end
										end
								end
						end
				end
		end
	end
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormExtraWindowNoteAdd] TO [DYNGRP]
GO
