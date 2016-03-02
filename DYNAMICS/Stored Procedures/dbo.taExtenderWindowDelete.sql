SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderWindowDelete]
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@O_iErrorState int output,
	@oErrString varchar(255) output
as
declare @INTERID char(5)
declare @FOUND smallint
declare @iStatus smallint
declare @iAddCodeErrState int
declare @KeyString char(255)
declare @RecordID int

-- check required fields
if @I_vWindowID = '' or @I_vKey1 = ''
	begin
		select @O_iErrorState = 25001
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
	end
else
	begin
		set @FOUND = 0
		-- get all the gp companies
		declare company_cursor cursor for
		select INTERID from SY01500
		open company_cursor
		fetch next from company_cursor into @INTERID
		while @@FETCH_STATUS = 0
		begin
			declare @CMD nvarchar(max)
			declare @COUNT int
			declare @WINCOUNT int
			-- check if the stored proc exists in the company database
			set @CMD = ' Select @RCDCNT = count(*) from ' + rtrim(@INTERID) + '.dbo.sysobjects where name = @PROCNAME and type = @PROCTYPE'
			exec sp_executesql @CMD, N'@RCDCNT int out, @PROCNAME char(255), @PROCTYPE char(5)', @COUNT out, 'ExtenderDoesWindowExist', 'FN'
			if(@COUNT <> 0)
			begin
				-- stored proc exists, make sure the window exists
				set @CMD = 'Select @WINCNT = ' + RTRIM(@INTERID) + '.dbo.ExtenderDoesWindowExist(''' + RTRIM(@I_vWindowID) + ''')'
				exec sp_executesql @CMD, N'@WINCNT int out', @WINCOUNT out
				if(@WINCOUNT <> 0)
				begin
					set @FOUND = 1
					set @CMD = 'exec ' + rtrim(@INTERID) + '.dbo.taExtenderWindowDelete @winID, @key1, @key2, @key3, @key4, @key5, @errState out, @errString out '
					exec sp_executesql @CMD, N'@winID char(15), @key1 char(255), @key2 char(255), @key3 char(255), @key4 char(255), @key5 char(255), @errState int output, @errString varchar(255) output', 
						@I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @O_iErrorState out, @oErrString out	
				end
			end
			fetch next from company_cursor into @INTERID
		end
		close company_cursor
		deallocate company_cursor
	end
if (@FOUND = 0)
begin
	select @O_iErrorState = 25052
	exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
end
return isnull(@O_iErrorState,0)
GO
GRANT EXECUTE ON  [dbo].[taExtenderWindowDelete] TO [DYNGRP]
GO
