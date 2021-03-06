SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderFormDelete]  
	@I_vFormID  char(15),    
	@I_vRecordID  char(15),
	@I_vRecordID2  char(15) = '',
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
if @I_vFormID = '' or @I_vRecordID = ''
	begin
		select @O_iErrorState = 25024
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		--check the 2nd key field
		if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 1 and @I_vRecordID2 = '')
		begin
			select @O_iErrorState = 25097
			exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		end
		else
		begin
			--set the recordid to empty string if not required
			if (dbo.ExtenderIsSecondKeyRequired(@I_vFormID) = 0) begin set @I_vRecordID2 = '' end
			
			if dbo.ExtenderDoesFormExist(@I_vFormID) = 0
				begin
					select @O_iErrorState = 25056
					exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
				end
			else
				begin
					exec ExtenderFormGetRecordID @I_vFormID, @I_vRecordID, @I_vRecordID2, @RecordID output
					delete from EXT01200 where Extender_Record_ID = @RecordID
					delete from EXT01201 where Extender_Record_ID = @RecordID
					delete from EXT01202 where Extender_Record_ID = @RecordID
					delete from EXT01203 where Extender_Record_ID = @RecordID
					delete from EXT01204 where Extender_Record_ID = @RecordID
					delete from EXT01210 where Extender_Record_ID = @RecordID
					delete from EXT01211 where Extender_Record_ID = @RecordID
					delete from EXT01212 where Extender_Record_ID = @RecordID
					delete from EXT01213 where Extender_Record_ID = @RecordID
					delete from EXT01214 where Extender_Record_ID = @RecordID
				end
		end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderFormDelete] TO [DYNGRP]
GO
