SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_util_subtract_time] (  @HOUR1 integer OUTPUT,  @MINUTE1 integer OUTPUT ,  @HOUR2 integer ,  @MINUTE2 integer  ) as declare @MinuteHours integer  declare @TEMPMINUTE1 int, @TEMPMINUTE2 int select @TEMPMINUTE1 = (@HOUR1 * 60) + @MINUTE1 select @TEMPMINUTE2 = (@HOUR2 * 60) + @MINUTE2 select @TEMPMINUTE1 = @TEMPMINUTE1 - @TEMPMINUTE2 select @HOUR1 = (@TEMPMINUTE1 / 60) select @MINUTE1 = (@TEMPMINUTE1 - (@HOUR1 * 60))    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_subtract_time] TO [DYNGRP]
GO
