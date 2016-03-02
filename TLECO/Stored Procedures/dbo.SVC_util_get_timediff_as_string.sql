SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_get_timediff_as_string] (  @STRTDATE datetime,   @STRTTIME datetime,   @ENDDATE datetime,   @ENDTIME datetime,   @TimeValue numeric(19,5) OUTPUT,  @TimeString varchar(20) OUTPUT ) as set nocount on  declare   @DayDiff integer,  @MinuteDiff numeric(19,5),  @SecondDiff numeric(19,5),  @HourDiff numeric(19,5),  @HourInt integer,  @MinuteInt integer declare @TimeDiff numeric(19,5),@Mantissa integer,@exponent numeric(19,5) declare @FromDatetime datetime declare @ToDatetime datetime select @TimeValue = 0,@TimeString = '' if (@STRTDATE > '01/01/1900') and (@ENDDATE > '01/01/1900')  BEGIN  exec SVC_util_combine_date_time @STRTDATE,@STRTTIME,@FromDatetime out  exec SVC_util_combine_date_time @ENDDATE,@ENDTIME,@ToDatetime out  select @SecondDiff = datediff(second,@FromDatetime,@ToDatetime)  if @SecondDiff > 0   BEGIN  select @HourInt = @SecondDiff / 3600  select @MinuteInt = (@SecondDiff - (@HourInt * 3600)) / 60  exec SVC_util_timelength_to_string @HourInt,@MinuteInt,@TimeString OUTPUT  select @HourInt = CONVERT(integer,SUBSTRING(@TimeString,1,3)),  @Mantissa = CONVERT(integer,SUBSTRING(@TimeString,4,2)),  @exponent = CONVERT(integer,SUBSTRING(@TimeString,4,2)) / 60.0  select @TimeValue = CONVERT(numeric(19,5),(CONVERT(varchar(20),@HourInt) + '.' + convert(varchar(20),CONVERT(integer,@exponent * 100000))))  END ELSE  select @TimeValue = 0   set nocount off END  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_get_timediff_as_string] TO [DYNGRP]
GO
