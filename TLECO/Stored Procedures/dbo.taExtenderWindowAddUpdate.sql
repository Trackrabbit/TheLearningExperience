SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderWindowAddUpdate]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@I_vFieldValue1 char(255) = null,
	@I_vFieldValue2 char(255) = null,
	@I_vFieldValue3 char(255) = null,
	@I_vFieldValue4 char(255) = null,
	@I_vFieldValue5 char(255) = null,
	@I_vFieldValue6 char(255) = null,
	@I_vFieldValue7 char(255) = null,
	@I_vFieldValue8 char(255) = null,
	@I_vFieldValue9 char(255) = null,
	@I_vFieldValue10 char(255) = null,
	@I_vFieldValue11 char(255) = null,
	@I_vFieldValue12 char(255) = null,
	@I_vFieldValue13 char(255) = null,
	@I_vFieldValue14 char(255) = null,
	@I_vFieldValue15 char(255) = null,
	@I_vUpdateIfExists int = 1,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @RecordID int
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int

declare @fieldError char(255)
declare @fieldErrorCode int

set nocount on

-- check required fields
if @I_vWindowID = '' or @I_vKey1 = ''
	begin
		select @O_iErrorState = 25002
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	if dbo.ExtenderDoesWindowExist(@I_vWindowID) = 0
		begin
			select @O_iErrorState = 25053
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
	else
		begin
			begin
				if (select count(*) from EXT01100 where Extender_Window_ID = @I_vWindowID and Extender_Key_Values_1 = @I_vKey1 and Extender_Key_Values_2 = @I_vKey2 
					and Extender_Key_Values_3 = @I_vKey3 and Extender_Key_Values_4 = @I_vKey4 and Extender_Key_Values_5 = @I_vKey5) = 0
					begin
						select @RecordID = isnull(MAX(Extender_Record_ID), 0) + 1 from EXT01100
						insert into EXT01100 
							(Extender_Window_ID, Extender_Record_ID, Extender_Key_Values_1, Extender_Key_Values_2, Extender_Key_Values_3, Extender_Key_Values_4, 
							Extender_Key_Values_5, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, NOTEINDX)
						values
							(@I_vWindowID, @RecordID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, dbo.StripTimeFromDate(getdate()), '', dbo.StripTimeFromDate(getdate()), '', 0)
					end
				else
					begin
						if @I_vUpdateIfExists = 0
							begin
								select @O_iErrorState = 25183
								exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
								return @O_iErrorState
							end
						exec ExtenderWindowGetRecordID @I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @RecordID output
					end 
				if @I_vFieldValue1 is not null
					begin			
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 1, 0, @I_vFieldValue1, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25168
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue2 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 2, 0, @I_vFieldValue2, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25169
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue3 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 3, 0, @I_vFieldValue3, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25170
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue4 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 4, 0, @I_vFieldValue4, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25171
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue5 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 5, 0, @I_vFieldValue5, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25172
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue6 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 6, 0, @I_vFieldValue6, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25173
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue7 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 7, 0, @I_vFieldValue7, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25174
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue8 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 8, 0, @I_vFieldValue8, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25175
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue9 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 9, 0, @I_vFieldValue9, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25176
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue10 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 10, 0, @I_vFieldValue10, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25177
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue11 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 11, 0, @I_vFieldValue11, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25178
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue12 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 12, 0, @I_vFieldValue12, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25179
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue13 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 13, 0, @I_vFieldValue13, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25180
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue14 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 14, 0, @I_vFieldValue14, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25181
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vFieldValue15 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, 15, 0, @I_vFieldValue15, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25182
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
			end
		end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderWindowAddUpdate] TO [DYNGRP]
GO
