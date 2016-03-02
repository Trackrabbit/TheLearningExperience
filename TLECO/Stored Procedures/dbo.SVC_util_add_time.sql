SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_util_add_time] (  @HOUR1 integer OUTPUT,  @MINUTE1 integer OUTPUT ,  @HOUR2 integer ,  @MINUTE2 integer  ) as declare @MinuteHours integer  select @HOUR1 = @HOUR1 + @HOUR2, @MINUTE1 = @MINUTE1 + @MINUTE2 if @MINUTE1 > 60 begin select @MinuteHours = (@MINUTE1 / 60.0)  select @HOUR1 = @HOUR1 + @MinuteHours  select @MINUTE1 = @MINUTE1 - (@MinuteHours * 60) end    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_add_time] TO [DYNGRP]
GO
