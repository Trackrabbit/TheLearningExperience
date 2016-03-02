SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taExtenderWindowAddUpdate]  
	@I_vWindowID  char(15),    
	@I_vKey1  char(255),
	@I_vKey2  char(255) = '',
	@I_vKey3  char(255) = '',
	@I_vKey4  char(255) = '',
	@I_vKey5  char(255) = '',
	@I_vFieldValue1 char(255) = null,
	@I_vFieldValue2 char(255) = null,
	@I_vFieldValue3 char(255) = null,
	@I_vFieldValue4 char(255) = null,
	@I_vFieldValue5 char(255) = null,
	@I_vFieldValue6 char(255) = null,
	@I_vFieldValue7 char(255) = null,
	@I_vFieldValue8 char(255) = null,
	@I_vFieldValue9 char(255) = null,
	@I_vFieldValue10 char(255) = null,
	@I_vFieldValue11 char(255) = null,
	@I_vFieldValue12 char(255) = null,
	@I_vFieldValue13 char(255) = null,
	@I_vFieldValue14 char(255) = null,
	@I_vFieldValue15 char(255) = null,
	@I_vUpdateIfExists int = 1,
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
		select @O_iErrorState = 25002
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
					set @CMD = 'exec ' + rtrim(@INTERID) + N'.dbo.taExtenderWindowAddUpdate @winID, @key1, @key2, @key3, @key4, @key5, @field1, @field2, @field3, @field4, @field5,
							@field6, @field7, @field8, @field9, @field10, @field11, @field12, @field13, @field14, @field15, @update, @error out, @errorString out'
					exec sp_executesql @CMD, N'@winID char(15), @key1 char(255), @key2 char(255), @key3 char(255), @key4 char(255), @key5 char(255), @field1 char(255), @field2 char(255), @field3 char(255),
						@field4 char(255), @field5 char(255), @field6 char(255), @field7 char(255), @field8 char(255), @field9 char(255), @field10 char(255), @field11 char(255), @field12 char(255),
						@field13 char(255), @field14 char(255), @field15 char(255), @update int, @error int out, @errorString varchar(255) out',@I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4,
						@I_vKey5, @I_vFieldValue1, @I_vFieldValue2, @I_vFieldValue3, @I_vFieldValue4, @I_vFieldValue5, @I_vFieldValue6, @I_vFieldValue7, @I_vFieldValue8, @I_vFieldValue9, @I_vFieldValue10, 
						@I_vFieldValue11, @I_vFieldValue12, @I_vFieldValue13, @I_vFieldValue14, @I_vFieldValue15, @I_vUpdateIfExists, @O_iErrorState out, @oErrString out
				end
			end
			fetch next from company_cursor into @INTERID
		end
		close company_cursor
		deallocate company_cursor
	end
if(@FOUND = 0)
begin
		select @O_iErrorState = 25002
		exec @iStatus = taUpdateString @O_iErrorState, @oErrString, @oErrString output, @iAddCodeErrState output
end
return isnull(@O_iErrorState,0)
GO
GRANT EXECUTE ON  [dbo].[taExtenderWindowAddUpdate] TO [DYNGRP]
GO
