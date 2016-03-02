SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderWindowLineAddUpdate]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@I_vLineItem int = 0,
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

declare @RecordID int
declare @NextLineItem int
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
		select @O_iErrorState = 25030
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		if dbo.ExtenderDoesWindowExist(@I_vWindowID) = 0
			begin
				select @O_iErrorState = 25068
				exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
			end
		else
			begin
				exec ExtenderWindowGetRecordID @I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @RecordID output
				if @I_vLineItem = 0
					begin
						if (select count(*) from EXT01110 where Extender_Record_ID = @RecordID) = 0
							begin
								select @NextLineItem = 1
							end
						else
							begin
								select @NextLineItem = max(LNITMSEQ) + 1 from EXT01110 where Extender_Record_ID = @RecordID
							end
					end
				else
					begin
						select @NextLineItem = @I_vLineItem
					end	
				if (select count(*) from EXT01110 where Extender_Record_ID = @RecordID and LNITMSEQ = @NextLineItem) = 0
					begin
						insert into EXT01110 (Extender_Record_ID, LNITMSEQ)
						values (@RecordID, @NextLineItem)	
					end
				else
					begin
						if @I_vUpdateIfExists = 0
							begin
								select @O_iErrorState = 25184
								exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
								return @O_iErrorState
							end
					end
				if @I_vField_Value_Row_1_Column_1 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 1, 1, @NextLineItem, @I_vField_Value_Row_1_Column_1, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25185
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_1_Column_2 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 1, 2, @NextLineItem, @I_vField_Value_Row_1_Column_2, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25186
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_1_Column_3 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 1, 3, @NextLineItem, @I_vField_Value_Row_1_Column_3, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25187
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_1_Column_4 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 1, 4, @NextLineItem, @I_vField_Value_Row_1_Column_4, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25188
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_1_Column_5 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 1, 5, @NextLineItem, @I_vField_Value_Row_1_Column_5, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25189
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_2_Column_1 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 2, 1, @NextLineItem, @I_vField_Value_Row_2_Column_1, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25190
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_2_Column_2 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 2, 2, @NextLineItem, @I_vField_Value_Row_2_Column_2, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25191
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_2_Column_3 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 2, 3, @NextLineItem, @I_vField_Value_Row_2_Column_3, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25192
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_2_Column_4 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 2, 4, @NextLineItem, @I_vField_Value_Row_2_Column_4, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25193
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
				if @I_vField_Value_Row_2_Column_5 is not null
					begin
						exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 4, 2, 5, @NextLineItem, @I_vField_Value_Row_2_Column_5, @fieldErrorCode output
						if @fieldErrorCode <> 0
							begin
								select @O_iErrorState = 25194
								exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
							end
					end
			end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderWindowLineAddUpdate] TO [DYNGRP]
GO
