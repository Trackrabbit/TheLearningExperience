SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create function [dbo].[ExtenderIsSecondKeyRequired]
	(
		@FormID char(15)
	)
	returns smallint
as
	begin
		declare @KeyNeeded smallint
		select @KeyNeeded = Use_Secondary_Key from EXT20200 where Extender_Form_ID = @FormID
		return (@KeyNeeded)
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderIsSecondKeyRequired] TO [DYNGRP]
GO
