SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create function [dbo].[ExtenderGetCurrentDate]()
	returns char(10)
as
begin
	declare @now datetime
	declare @dateString char(10)
	set @now = getdate()
	return rtrim(cast(year(@now) as char(4))) + '-' + rtrim(cast(month(@now) as char(2))) + '-' + rtrim(cast(day(@now) as char(2)))
end
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetCurrentDate] TO [DYNGRP]
GO
