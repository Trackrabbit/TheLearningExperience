SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[ncGetAccountInfo](@ACTINDX int, @OPT int) returns varchar(200) as begin 	declare @DESCR		varchar(200) 	if @OPT = 1 		select @DESCR = ACTDESCR from GL00100 where ACTINDX = @ACTINDX 	else  		select @DESCR = ACTNUMST from GL00105 where ACTINDX = @ACTINDX 	return @DESCR end  
GO
GRANT EXECUTE ON  [dbo].[ncGetAccountInfo] TO [DYNGRP]
GO
