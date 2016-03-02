SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_util_date_time_diff](@FromDate datetime,  @FromTime datetime,  @ToDate datetime,  @ToTime datetime,  @DayDiff integer output,  @HourDiff numeric(19,5) output) as declare @FromDatetime datetime declare @ToDatetime datetime exec SVC_util_combine_date_time @FromDate,@FromTime,@FromDatetime out exec SVC_util_combine_date_time @ToDate,@ToTime,@ToDatetime out select @DayDiff = datediff(day,@FromDatetime,@ToDatetime) select @HourDiff = datediff(second,@FromDatetime,@ToDatetime) / 3600.0 - (@DayDiff * 24)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_date_time_diff] TO [DYNGRP]
GO
