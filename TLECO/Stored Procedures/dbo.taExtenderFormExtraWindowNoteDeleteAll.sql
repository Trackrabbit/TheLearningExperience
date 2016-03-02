SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderFormExtraWindowNoteDeleteAll]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
	@I_vWindowNumber  int,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @RecordID int

set nocount on

-- check required fields
if @I_vFormID = '' or @I_vRecordID = '' or @I_vWindowNumber = 0
	begin
		select @O_iErrorState = 25072
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
				--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25101
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
			
			-- check that form exists
			if dbo.ExtenderDoesFormExist(@I_vFormID) = 0
				begin
					select @O_iErrorState = 25073
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					-- check that extra window exists
					if (select count(*) from EXT20201 where Extender_Form_ID = @I_vFormID and Window_Number = @I_vWindowNumber and (Extra_Window_Type = 2 or Extra_Window_Type = 3)) = 0
						begin
							select @O_iErrorState = 25074
							exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
						end
					else
						begin
							exec ExtenderFormGetRecordID @I_vFormID, @I_vRecordID, @I_vRecordID2, @RecordID output
							delete EXT01500 where Extender_Record_ID = @RecordID and Extender_Type = 2
						end
				end
		end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormExtraWindowNoteDeleteAll] TO [DYNGRP]
GO
