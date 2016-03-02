SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--drop procedure [dbo].[taExtenderFormExtraWindowAddUpdate]  
create procedure [dbo].[taExtenderFormExtraWindowAddUpdate]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
	@I_vWindowNumber  int,
	@I_vField_Value_1 char(255) = null,
	@I_vField_Value_2 char(255) = null,
	@I_vField_Value_3 char(255) = null,
	@I_vField_Value_4 char(255) = null,
	@I_vField_Value_5 char(255) = null,
	@I_vField_Value_6 char(255) = null,
	@I_vField_Value_7 char(255) = null,
	@I_vField_Value_8 char(255) = null,
	@I_vField_Value_9 char(255) = null,
	@I_vField_Value_10 char(255) = null,
	@I_vField_Value_11 char(255) = null,
	@I_vField_Value_12 char(255) = null,
	@I_vField_Value_13 char(255) = null,
	@I_vField_Value_14 char(255) = null,
	@I_vField_Value_15 char(255) = null,
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
if @I_vFormID = '' or @I_vRecordID = ''
	begin
		select @O_iErrorState = 25021
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25098
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
				
			-- check that form exists
			if dbo.ExtenderDoesFormExist(@I_vFormID) = 0
				begin
					select @O_iErrorState = 25022
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					-- check that extra window exists
					if (select count(*) from EXT20201 where Extender_Form_ID = @I_vFormID and Window_Number = @I_vWindowNumber and Extra_Window_Type = 1) = 0
						begin
							select @O_iErrorState = 25023
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
						end
					else
						begin
							exec ExtenderFormGetRecordID @I_vFormID, @I_vRecordID, @I_vRecordID2, @RecordID output
							if(@I_vUpdateIfExists <> 1 and @RecordID <> 0)
								begin
									select @O_iErrorState = 25140
									exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									return @O_iErrorState
								end
							if @I_vField_Value_1 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 1, 0, @I_vField_Value_1, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25141
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_2 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 2, 0, @I_vField_Value_2, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25142
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_3 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 3, 0, @I_vField_Value_3, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25143
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_4 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 4, 0, @I_vField_Value_4, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25144
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_5 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 5, 0, @I_vField_Value_5, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25145
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_6 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 6, 0, @I_vField_Value_6, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25146
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_7 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 7, 0, @I_vField_Value_7, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25147
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_8 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 8, 0, @I_vField_Value_8, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25148
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_9 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 9, 0, @I_vField_Value_9, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25149
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_10 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 10, 0, @I_vField_Value_10, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25150
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_11 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 11, 0, @I_vField_Value_11, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25151
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_12 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 12, 0, @I_vField_Value_12, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25152
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_13 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 13, 0, @I_vField_Value_13, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25153
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_14 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 14, 0, @I_vField_Value_14, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25154
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if @I_vField_Value_15 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, 15, 0, @I_vField_Value_15, @fieldErrorCode output
									if @fieldErrorCode <> 0
										begin
											select @O_iErrorState = 25155
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
						end
				end
		end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormExtraWindowAddUpdate] TO [DYNGRP]
GO
