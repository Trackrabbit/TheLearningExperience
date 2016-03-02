SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderWindowSetValue]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@I_vFieldNumber  int,
	@I_vFieldValue char(255),
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @KeyString char(255)
declare @O_oErrorState int
declare @iError int
declare @iStatus smallint
declare @iAddCodeErrState int
declare @RecordID int

set nocount on

-- check that required fields exist
if @I_vWindowID = '' or @I_vKey1 = '' or @I_vFieldNumber = 0
	begin
		select @O_iErrorState = 25048
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		if dbo.ExtenderDoesWindowExist(@I_vWindowID) = 0 
			begin
				select @O_iErrorState = 25054
				exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
			end
		else
			begin
				exec ExtenderWindowGetRecordID @I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @RecordID output
				exec ExtenderWindowSaveField @I_vWindowID, @RecordID, 0, 0, @I_vFieldNumber, 0, @I_vFieldValue	
			end
	end
return (@O_iErrorState)
GO
GRANT EXECUTE ON  [dbo].[taExtenderWindowSetValue] TO [DYNGRP]
GO
