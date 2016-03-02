SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--drop procedure [dbo].[taExtenderFormLineAddUpdate]  
create procedure [dbo].[taExtenderFormLineAddUpdate]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
	@I_vLineItem  int = 0,
	@I_vField_Value_Row_1_Column_1 char(255) = null,
	@I_vField_Value_Row_1_Column_2 char(255) = null,
	@I_vField_Value_Row_1_Column_3 char(255) = null,
	@I_vField_Value_Row_1_Column_4 char(255) = null,
	@I_vField_Value_Row_1_Column_5 char(255) = null,
	@I_vField_Value_Row_2_Column_1 char(255) = null,
	@I_vField_Value_Row_2_Column_2 char(255) = null,
	@I_vField_Value_Row_2_Column_3 char(255) = null,
	@I_vField_Value_Row_2_Column_4 char(255) = null,
	@I_vField_Value_Row_2_Column_5 char(255) = null,
	@I_vUpdateIfExists int = 1,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @NextLineItem int
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @RecordID int

declare @fieldError char(255)
declare @fieldErrorCode int

set nocount on

-- check required fields
if @I_vFormID = '' or @I_vRecordID = ''
	begin
		select @O_iErrorState = 25035
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25094
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
				
			-- check that form exists
			if dbo.ExtenderDoesFormExist(@I_vFormID) = 0
				begin
					select @O_iErrorState = 25036
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					exec ExtenderFormGetRecordID @I_vFormID, @I_vRecordID, @I_vRecordID2, @RecordID output
					if @RecordID is null or @RecordID = ''
						begin
							select @O_iErrorState = 25166
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							return @O_iErrorState
						end
					if @I_vLineItem = 0
						begin
							if (select count(*) from EXT01210 where Extender_Record_ID = @RecordID) = 0
								begin
									select @NextLineItem = 1
								end
							else
								begin
									select @NextLineItem = max(LNITMSEQ) + 1 from EXT01210 where Extender_Record_ID = @RecordID
								end
							insert into EXT01210
								(Extender_Record_ID, Window_Number, LNITMSEQ)
							values
								(@RecordID, 0, @NextLineItem)
							if @I_vField_Value_Row_1_Column_1 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 1, 1, @NextLineItem, @I_vField_Value_Row_1_Column_1, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25156
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_1_Column_2 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 1, 2, @NextLineItem, @I_vField_Value_Row_1_Column_2, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25157
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_1_Column_3 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 1, 3, @NextLineItem, @I_vField_Value_Row_1_Column_3, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25158
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_1_Column_4 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 1, 4, @NextLineItem, @I_vField_Value_Row_1_Column_4, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25159
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_1_Column_5 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 1, 5, @NextLineItem, @I_vField_Value_Row_1_Column_5, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25160
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_2_Column_1 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 2, 1, @NextLineItem, @I_vField_Value_Row_2_Column_1, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25161
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_2_Column_2 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 2, 2, @NextLineItem, @I_vField_Value_Row_2_Column_2, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25162
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_2_Column_3 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 2, 3, @NextLineItem, @I_vField_Value_Row_2_Column_3, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25163
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_2_Column_4 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 2, 4, @NextLineItem, @I_vField_Value_Row_2_Column_4, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25164
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Row_2_Column_5 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, 2, 5, @NextLineItem, @I_vField_Value_Row_2_Column_5, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25165
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
						end
					else
						begin
							if (select count(*) from EXT01210 where Extender_Record_ID = @RecordID and LNITMSEQ = @I_vLineItem) = 0
								begin
									select @O_iErrorState = 25037
									exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
								end
							else
								begin
									if @I_vUpdateIfExists <> 1
										begin
											select @O_iErrorState = 25167
											exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
											return @O_iErrorState
										end
									if @I_vField_Value_Row_1_Column_1 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 1, 1,  @I_vField_Value_Row_1_Column_1, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25156
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_1_Column_2 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 1, 2,  @I_vField_Value_Row_1_Column_2, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25157
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_1_Column_3 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 1, 3,  @I_vField_Value_Row_1_Column_3, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25158
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_1_Column_4 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 1, 4,  @I_vField_Value_Row_1_Column_4, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25159
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_1_Column_5 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 1, 5,  @I_vField_Value_Row_1_Column_5, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25160
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_2_Column_1 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 2, 1,  @I_vField_Value_Row_2_Column_1, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25161
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_2_Column_2 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 2, 2,  @I_vField_Value_Row_2_Column_2, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25162
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_2_Column_3 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 2, 3,  @I_vField_Value_Row_2_Column_3, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25163
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_2_Column_4 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 2, 4,  @I_vField_Value_Row_2_Column_4, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25164
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
									if @I_vField_Value_Row_2_Column_5 is not null
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 4, @I_vLineItem, 2, 5,  @I_vField_Value_Row_2_Column_5, @fieldErrorCode output
											if(@fieldErrorCode <> 0)
												begin
													select @O_iErrorState = 25165
													exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
												end
										end
								end
						end		
				end
		end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormLineAddUpdate] TO [DYNGRP]
GO
