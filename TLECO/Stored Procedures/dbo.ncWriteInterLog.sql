SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncWriteInterLog] 	@I_cLogMessage char(255) as declare 	@iEnableLogging int,  	@dDate datetime, 	@dTime datetime select @iEnableLogging = NC_SpareInts_6 from NCIC3000 if (@iEnableLogging = 1) begin 	/* parse the time and date (for writing to a dex table) and write them to file */ 	select @dDate = GETDATE() 	select @dTime = @dDate 	select @dDate = DATEADD(hour,- DATEPART(hour,@dDate),@dDate) 	select @dDate = DATEADD(minute,- DATEPART(minute,@dDate),@dDate) 	select @dDate = DATEADD(second,- DATEPART(second,@dDate),@dDate) 	select @dDate = DATEADD(millisecond,- DATEPART(millisecond,@dDate),@dDate) 	select @dTime = DATEADD(year,- (DATEPART(year,@dTime)-1900),@dTime) 	select @dTime = DATEADD(month,- (DATEPART(month,@dTime)-1),@dTime) 	select @dTime = DATEADD(day,- (DATEPART(day,@dTime)-1),@dTime) 	insert into NCIC6000 values(@dDate,@dTime,@I_cLogMessage) end  
GO
GRANT EXECUTE ON  [dbo].[ncWriteInterLog] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncWriteInterLog] TO [public]
GO
