SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_util_timeval_to_string](  @TIME numeric(19,5),  @TIMESTRING varchar(20) OUTPUT) as declare @HOURS integer declare @MINUTES numeric(2,0) declare @HOURSTRING varchar(2) declare @MINUTESTRING varchar(2) if @TIME >= 1  select @MINUTES = (@TIME - convert(int,@TIME)) * 60,  @HOURS = convert(int,@TIME) else select @MINUTES = @TIME * 60,  @HOURS = 0 select @HOURSTRING = CONVERT(varchar(2),@HOURS) if LEN(@HOURSTRING) < 2  select @HOURSTRING = '0' + @HOURSTRING select @MINUTESTRING = CONVERT(varchar(2),@MINUTES) if LEN(@MINUTESTRING) < 2  select @MINUTESTRING = '0' + @MINUTESTRING select @TIMESTRING = '0' + @HOURSTRING + @MINUTESTRING return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_timeval_to_string] TO [DYNGRP]
GO
