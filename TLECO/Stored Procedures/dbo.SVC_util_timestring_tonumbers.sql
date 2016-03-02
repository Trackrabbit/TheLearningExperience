SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_util_timestring_tonumbers] (  @TIMESTRING varchar(20),  @HourInt integer OUTPUT,  @MinuteInt integer OUTPUT ) as declare @TIME numeric(19,5) declare  @Mantissa integer,@exponent numeric(19,5) select @TIMESTRING = IsNull(nullif(@TIMESTRING,''),'00:00') select @HourInt = convert(integer,SUBSTRING(@TIMESTRING,1,CHARINDEX(':', @TIMESTRING) - 1)),  @Mantissa = convert(integer,SUBSTRING(@TIMESTRING,CHARINDEX(':', @TIMESTRING) + 1,2)),  @exponent =convert(integer,SUBSTRING(@TIMESTRING,CHARINDEX(':', @TIMESTRING) + 1,2)) / 60.0 select @TIME = CONVERT(numeric(19,5),(CONVERT(varchar(20),@HourInt) + '.' + convert(varchar(20),CONVERT(integer,@exponent * 100000))))  select @HourInt = @TIME select @MinuteInt = ROUND((@TIME - @HourInt) * 60,2)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_timestring_tonumbers] TO [DYNGRP]
GO
