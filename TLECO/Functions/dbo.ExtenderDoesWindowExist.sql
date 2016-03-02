SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create function [dbo].[ExtenderDoesWindowExist]
	(@WindowID char(15))
	returns int
as
	begin
		declare @WindowExists int
		select @WindowExists = count(*) from EXT20100 where Extender_Window_ID = @WindowID
		return (@WindowExists)
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderDoesWindowExist] TO [DYNGRP]
GO
