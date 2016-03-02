SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create function [dbo].[ExtenderGetCurrentTime]()
	returns char(8)
as
begin
	declare @now datetime
	set @now = getdate()
	return rtrim(cast(datepart(hh,@now) as char(2))) + ':' + rtrim(cast(datepart(mi,@now) as char(2))) + ':' + rtrim(cast(datepart(ss,@now) as char(2)))
end


GO
GRANT EXECUTE ON  [dbo].[ExtenderGetCurrentTime] TO [DYNGRP]
GO
