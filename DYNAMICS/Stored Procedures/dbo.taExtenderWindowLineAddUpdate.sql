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

declare @INTERID char(5)
declare @FOUND smallint
declare @iStatus smallint
declare @iAddCodeErrState int
declare @KeyString char(255)
declare @RecordID int

-- check required fields
if @I_vWindowID = '' or @I_vKey1 = ''
	begin
		select @O_iErrorState = 25030
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
			-- check if the stored proc exists
			declare @CMD nvarchar(max)
			declare @COUNT int
			declare @WINCOUNT int
			-- check if the stored proc exists in the company database
			set @CMD = ' Select @RCDCNT = count(*) from ' + rtrim(@INTERID) + '.dbo.sysobjects where name = @PROCNAME and type = @PROCTYPE'
			exec sp_executesql @CMD, N'@RCDCNT int out, @PROCNAME char(255), @PROCTYPE char(5)', @COUNT out, 'ExtenderDoesWindowExist', 'FN'
			if(@COUNT <> 0)
			begin
				-- the stored proc exists, does the window exist
				set @CMD = 'Select @WINCNT = ' + RTRIM(@INTERID) + '.dbo.ExtenderDoesWindowExist(''' + RTRIM(@I_vWindowID) + ''')'
				exec sp_executesql @CMD, N'@WINCNT int out', @WINCOUNT out
				if(@WINCOUNT <> 0)
				begin
					set @FOUND = 1
					set @CMD = 'exec ' + rtrim(@INTERID) + N'.dbo.taExtenderWindowLineAddUpdate @winID, @key1, @key2, @key3, @key4, @key5, @line,  
							@field_1_1, @field_1_2, @field_1_3, @field_1_4, @field_1_5,
							@field_2_1, @field_2_2, @field_2_3, @field_2_4, @field_2_5, 
							@update, @error output, @errorString output '
					exec sp_executesql @CMD, N'@winID char(15), @key1 char(255), @key2 char(255), @key3 char(255), @key4 char(255), @key5 char(255), @line int,
						@field_1_1 char(255), @field_1_2 char(255), @field_1_3 char(255), @field_1_4 char(255), @field_1_5 char(255), 
						@field_2_1 char(255), @field_2_2 char(255), @field_2_3 char(255), @field_2_4 char(255), @field_2_5 char(255), 
						@update int, @error int output, @errorString varchar(255) output', 
						@I_vWindowID, @I_vKey1, @I_vKey2, @I_vKey3, @I_vKey4, @I_vKey5, @I_vLineItem, 
						@I_vField_Value_Row_1_Column_1, @I_vField_Value_Row_1_Column_2, @I_vField_Value_Row_1_Column_3, @I_vField_Value_Row_1_Column_4, @I_vField_Value_Row_1_Column_5,
						@I_vField_Value_Row_2_Column_1, @I_vField_Value_Row_2_Column_2, @I_vField_Value_Row_2_Column_3, @I_vField_Value_Row_2_Column_4, @I_vField_Value_Row_2_Column_5,
						@I_vUpdateIfExists, @O_iErrorState out, @oErrString out
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
GRANT EXECUTE ON  [dbo].[taExtenderWindowLineAddUpdate] TO [DYNGRP]
GO
