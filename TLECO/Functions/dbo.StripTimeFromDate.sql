SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create function [dbo].[StripTimeFromDate]
	(@v_DateTime datetime)
	returns datetime
as
	begin
		declare @Date datetime
		declare @DateString char(20)
		select @DateString = rtrim(cast(year(@v_DateTime) as char(4))) + '-' + rtrim(cast(month(@v_DateTime) as char(2))) + '-' + rtrim(cast(day(@v_DateTime) as char(2)))
		select @Date = cast(@DateString as datetime)
		return (@Date)
	end
GO
GRANT EXECUTE ON  [dbo].[StripTimeFromDate] TO [DYNGRP]
GO
