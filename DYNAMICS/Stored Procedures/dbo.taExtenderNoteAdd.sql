SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderNoteAdd]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@I_vNote char(255),
	@I_vNoteType char(65) = '',
	@I_vNoteID	int = 0,
	@I_vUpdateIfExists int = 1,
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @iStatus smallint
declare @iAddCodeErrState int
declare @INTERID char(5)
declare @FOUND int

if @I_vWindowID = '' or @I_vKey1 = '' or @I_vNote = ''
	begin
		select @O_iErrorState = 25005
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		return @O_iErrorState
	end
else
	begin
		set @FOUND = 0
		-- get all the gp companies
		declare company_cursor cursor for select INTERID from SY01500
		open company_cursor
		fetch next from company_cursor into @INTERID
		while @@FETCH_STATUS = 0
		begin
			declare @CMD nvarchar(max)
			declare @COUNT int
			declare @WINCOUNT int
			-- check if the proc exists in the company database
			set @CMD = N' Select @RCDCNT = count(*) from ' + rtrim(@INTERID) + N'.dbo.sysobjects where name = @PROCNAME and type = @PROCTYPE'
			exec sp_executesql @CMD, N'@RCDCNT int out, @PROCNAME char(255), @PROCTYPE char(5)', @COUNT out, 'ExtenderDoesWindowExist', 'FN'
			if(@COUNT <> 0)
			begin
				-- the stored proc exists, does the window exist
				set @CMD = 'Select @WINCNT = ' + RTRIM(@INTERID) + '.dbo.ExtenderDoesWindowExist(''' + RTRIM(@I_vWindowID) + ''')'
				exec sp_executesql @CMD, N'@WINCNT int out', @WINCOUNT out
				if(@WINCOUNT <> 0)
				begin
					set @FOUND = 1
					set @CMD = 'exec ' + rtrim(@INTERID) + '.dbo.taExtenderNoteAdd @winID, @key1, @key2, @key3, @key4, @key5, @note, @noteType, @noteId, @update, @error output, @errString output '
					exec sp_executesql @CMD, N'@winID char(15), @key1 char(255), @key2 char(255), @key3 char(255), @key4 char(255), @key5 char(255), @note char(255), @noteType char(65),
						@noteId int, @update int, @error int output, @errString varchar(255) output',
						@I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @I_vNote, @I_vNoteType, @I_vNoteID, @I_vUpdateIfExists, @O_iErrorState output, @oErrString output
				end
			end
			fetch next from company_cursor into @INTERID
		end
		close company_cursor
		deallocate company_cursor				
	end
if @FOUND = 0
	begin
		select @O_iErrorState = 25002
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
end
return isnull(@O_iErrorState,0)
GO
GRANT EXECUTE ON  [dbo].[taExtenderNoteAdd] TO [DYNGRP]
GO
