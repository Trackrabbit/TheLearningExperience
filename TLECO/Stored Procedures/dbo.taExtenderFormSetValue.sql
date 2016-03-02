SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderFormSetValue]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
	@I_vWindowNumber  int,
	@I_vColumnNumber  int,
	@I_vFieldNumber  int,
	@I_vFieldValue char(255),
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @RecordID int

set nocount on

-- check that required fields exist
if @I_vFormID = '' or @I_vRecordID = '' or @I_vFieldNumber = 0
	begin
		select @O_iErrorState = 25015
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
				--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25102
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
				
			-- check that form exists
			if dbo.ExtenderDoesFormExist(@I_vFormID) = 0
				begin
					select @O_iErrorState = 25015
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					-- check that record exists
					if (select count(*) from EXT01200 where Extender_Form_ID = @I_vFormID and UD_Form_Field_ID = @I_vRecordID and UD_Form_Field_ID_2 = @I_vRecordID2) = 0
						begin
							select @O_iErrorState = 25016
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
						end
					else
						begin
							exec ExtenderFormGetRecordID @I_vFormID, @I_vRecordID, @I_vRecordID2, @RecordID output
							if @I_vWindowNumber = 0
								begin
									if @I_vColumnNumber = 1 or @I_vColumnNumber = 2
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, @I_vColumnNumber, 0, @I_vFieldNumber, 0, @I_vFieldValue
										end
									else
										begin
											select @O_iErrorState = 25015
											exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
								end
							else
								begin
									-- check that window exists
									if (select count(*) from EXT20201 where Extender_Form_ID = @I_vFormID and Window_Number = @I_vWindowNumber and Extra_Window_Type = 1) = 0
										begin
											select @O_iErrorState = 25017
											exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
										end
									else
										begin
											exec ExtenderFormSaveField @I_vFormID, @RecordID, 3, @I_vWindowNumber, @I_vFieldNumber, 0, @I_vFieldValue
										end
								end
						end
				end
		end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormSetValue] TO [DYNGRP]
GO
