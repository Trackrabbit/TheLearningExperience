SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderNoteDeleteAll]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@O_iErrorState int output,
	@oErrString varchar(255) output
as

declare @iStatus smallint
declare @iAddCodeErrState int
declare @INTERID char(5)
declare @FOUND int

if @I_vWindowID = '' or @I_vKey1 = ''
	begin
		select @O_iErrorState = 25004
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
		return @O_iErrorState
	end
else
	begin
		set @FOUND = 0
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
					set @CMD = 'exec ' + rtrim(@INTERID) + '.dbo.taExtenderNoteDeleteAll @winID, @key1, @key2, @key3, @key4, @key5, @state output, @error output '
					exec sp_executesql @CMD, N'@winID char(15), @key1 char(255), @key2 char(255), @key3 char(255), @key4 char(255), @key5 char(255), 
								@state int output, @error char(255) output',
						@I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @O_iErrorState output, @oErrString output
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
return @O_iErrorState
GO
GRANT EXECUTE ON  [dbo].[taExtenderNoteDeleteAll] TO [DYNGRP]
GO
