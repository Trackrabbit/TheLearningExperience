SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--drop proc [taExtenderFormAddUpdate]
create procedure [dbo].[taExtenderFormAddUpdate]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
	@I_vRecordDesc  char(64) = '',
	@I_vField_Value_Col_1_Row_1 char(255) = null,
	@I_vField_Value_Col_1_Row_2 char(255) = null,
	@I_vField_Value_Col_1_Row_3 char(255) = null,
	@I_vField_Value_Col_1_Row_4 char(255) = null,
	@I_vField_Value_Col_1_Row_5 char(255) = null,
	@I_vField_Value_Col_1_Row_6 char(255) = null,
	@I_vField_Value_Col_1_Row_7 char(255) = null,
	@I_vField_Value_Col_1_Row_8 char(255) = null,
	@I_vField_Value_Col_1_Row_9 char(255) = null,
	@I_vField_Value_Col_1_Row_10 char(255) = null,
	@I_vField_Value_Col_1_Row_11 char(255) = null,
	@I_vField_Value_Col_1_Row_12 char(255) = null,
	@I_vField_Value_Col_1_Row_13 char(255) = null,
	@I_vField_Value_Col_1_Row_14 char(255) = null,
	@I_vField_Value_Col_1_Row_15 char(255) = null,
	@I_vField_Value_Col_2_Row_1 char(255) = null,
	@I_vField_Value_Col_2_Row_2 char(255) = null,
	@I_vField_Value_Col_2_Row_3 char(255) = null,
	@I_vField_Value_Col_2_Row_4 char(255) = null,
	@I_vField_Value_Col_2_Row_5 char(255) = null,
	@I_vField_Value_Col_2_Row_6 char(255) = null,
	@I_vField_Value_Col_2_Row_7 char(255) = null,
	@I_vField_Value_Col_2_Row_8 char(255) = null,
	@I_vField_Value_Col_2_Row_9 char(255) = null,
	@I_vField_Value_Col_2_Row_10 char(255) = null,
	@I_vField_Value_Col_2_Row_11 char(255) = null,
	@I_vField_Value_Col_2_Row_12 char(255) = null,
	@I_vField_Value_Col_2_Row_13 char(255) = null,
	@I_vField_Value_Col_2_Row_14 char(255) = null,
	@I_vField_Value_Col_2_Row_15 char(255) = null,
	@I_vUpdateIfExists int = 1,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @CreateOrUpdate int
declare @NextRecordId int
declare @RequiredState int
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
		select @O_iErrorState = 25025
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25096
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
			
			-- check that form exists
			if(dbo.ExtenderDoesFormExist(@I_vFormID) = 0)
				begin
					select @O_iErrorState = 25026
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					select @CreateOrUpdate = count(*) from EXT01200 where Extender_Form_ID = @I_vFormID and UD_Form_Field_ID = @I_vRecordID and UD_Form_Field_ID_2 = @I_vRecordID2
					if @CreateOrUpdate = 0
						begin
							select @NextRecordId = isnull(max(Extender_Record_ID), 0) + 1 from EXT01200
							insert into EXT01200 
								(Extender_Record_ID, Extender_Form_ID, UD_Form_Field_ID, UD_Form_Field_ID_2, UD_Form_Field_Desc, CREATDDT, CRUSRID, MDFUSRID, MODIFDT, NOTEINDX,
								EXCHDATE, EXGTBLID, CURNCYID, RATETPID, TIME1, XCHGRATE, Lookup_Value) 
							values 
								(@NextRecordId, @I_vFormID, @I_vRecordID, @I_vRecordID2, @I_vRecordDesc, dbo.StripTimeFromDate(getdate()), '', dbo.StripTimeFromDate(getdate()), '', 0,
								'1900-01-01', '', '', '', '1900-01-01', 0, '') 
							exec ExtenderFormCheckAllRequiredFields @I_vFormID, @I_vField_Value_Col_1_Row_1, @I_vField_Value_Col_1_Row_2,
								@I_vField_Value_Col_1_Row_3,  @I_vField_Value_Col_1_Row_4,  @I_vField_Value_Col_1_Row_5,  @I_vField_Value_Col_1_Row_6,
								@I_vField_Value_Col_1_Row_7,  @I_vField_Value_Col_1_Row_8,  @I_vField_Value_Col_1_Row_9,  @I_vField_Value_Col_1_Row_10,
								@I_vField_Value_Col_1_Row_11, @I_vField_Value_Col_1_Row_12, @I_vField_Value_Col_1_Row_13, @I_vField_Value_Col_1_Row_14, 
								@I_vField_Value_Col_1_Row_15, @I_vField_Value_Col_2_Row_1,  @I_vField_Value_Col_2_Row_2,  @I_vField_Value_Col_2_Row_3,  
								@I_vField_Value_Col_2_Row_4,  @I_vField_Value_Col_2_Row_5,  @I_vField_Value_Col_2_Row_6,  @I_vField_Value_Col_2_Row_7,
								@I_vField_Value_Col_2_Row_8,  @I_vField_Value_Col_2_Row_9,  @I_vField_Value_Col_2_Row_10, @I_vField_Value_Col_2_Row_11, 
								@I_vField_Value_Col_2_Row_12, @I_vField_Value_Col_2_Row_13, @I_vField_Value_Col_2_Row_14, @I_vField_Value_Col_2_Row_15, 
								@RequiredState output
						end
					else
						begin
							if(@I_vUpdateIfExists <> 1)
								begin
									select @O_iErrorState = 25105
									exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									return @O_iErrorState
								end
							else
								begin
									select @NextRecordId = Extender_Record_ID from EXT01200 where Extender_Form_ID = @I_vFormID and UD_Form_Field_ID = @I_vRecordID and UD_Form_Field_ID_2 = @I_vRecordID2
									if(@I_vRecordDesc <> '')
										begin
											update EXT01200 set UD_Form_Field_Desc = @I_vRecordDesc where Extender_Form_ID = @I_vFormID and UD_Form_Field_ID = @I_vRecordID and UD_Form_Field_ID_2 = @I_vRecordID2
										end
								end
						end
					if(@RequiredState = 1)
						begin
							select @O_iErrorState = 25025
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
						end
					else
						begin
							if(@I_vField_Value_Col_1_Row_1 is not null)
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 1, 0, @I_vField_Value_Col_1_Row_1, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
										begin
											select @O_iErrorState = 25106
											exec  @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							if(@I_vField_Value_Col_1_Row_2 is not null)
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 2, 0, @I_vField_Value_Col_1_Row_2, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25107
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_3 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 3, 0, @I_vField_Value_Col_1_Row_3, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25108
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_4 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 4, 0, @I_vField_Value_Col_1_Row_4, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25109
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_5 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 5, 0, @I_vField_Value_Col_1_Row_5, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25110
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_6 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 6, 0, @I_vField_Value_Col_1_Row_6, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25111
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_7 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 7, 0, @I_vField_Value_Col_1_Row_7, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25112
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_8 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 8, 0, @I_vField_Value_Col_1_Row_8, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25113
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_9 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 9, 0, @I_vField_Value_Col_1_Row_9, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25114
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_10 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 10, 0, @I_vField_Value_Col_1_Row_10, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25115
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_11 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 11, 0, @I_vField_Value_Col_1_Row_11, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25116
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_12 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 12, 0, @I_vField_Value_Col_1_Row_12, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25117
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_13 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 13, 0, @I_vField_Value_Col_1_Row_13, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25118
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_14 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 14, 0, @I_vField_Value_Col_1_Row_14, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25119
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_1_Row_15 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 1, 0, 15, 0, @I_vField_Value_Col_1_Row_15, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25120
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_1 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 1, 0, @I_vField_Value_Col_2_Row_1, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25121
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_2 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 2, 0, @I_vField_Value_Col_2_Row_2, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25122
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_3 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 3, 0, @I_vField_Value_Col_2_Row_3, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25123
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_4 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 4, 0, @I_vField_Value_Col_2_Row_4, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25124
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_5 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 5, 0, @I_vField_Value_Col_2_Row_5, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25125
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_6 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 6, 0, @I_vField_Value_Col_2_Row_6, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25126
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_7 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 7, 0, @I_vField_Value_Col_2_Row_7, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25127
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_8 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 8, 0, @I_vField_Value_Col_2_Row_8, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25128
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_9 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 9, 0, @I_vField_Value_Col_2_Row_9, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25129
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_10 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 10, 0, @I_vField_Value_Col_2_Row_10, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25130
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_11 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 11, 0, @I_vField_Value_Col_2_Row_11, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25131
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_12 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 12, 0, @I_vField_Value_Col_2_Row_12, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25132
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_13 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 13, 0, @I_vField_Value_Col_2_Row_13, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25133
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_14 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 14, 0, @I_vField_Value_Col_2_Row_14, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25134
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
							if @I_vField_Value_Col_2_Row_15 is not null
								begin
									exec ExtenderFormSaveField @I_vFormID, @NextRecordId, 2, 0, 15, 0, @I_vField_Value_Col_2_Row_15, @fieldErrorCode output
									if(@fieldErrorCode <> 0)
									begin
										select @O_iErrorState = 25135
										exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
									end
								end
						end
				end
		end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormAddUpdate] TO [DYNGRP]
GO
