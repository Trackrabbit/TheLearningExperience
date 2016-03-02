SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create function [dbo].[ExtenderDoesFormExist]
	(@FormID char(15))
	returns int
as
	begin
		declare @FormExists int
		select @FormExists = count(*) from EXT20200 where Extender_Form_ID = @FormID
		return (@FormExists)
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderDoesFormExist] TO [DYNGRP]
GO
