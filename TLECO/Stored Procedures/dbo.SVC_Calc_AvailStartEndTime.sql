SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Calc_AvailStartEndTime](  @STATIONID varchar(11),  @ETTR numeric(19,5),  @CheckDateTime datetime ,  @vCombinedDateTime datetime OUTPUT,  @vEndDateTime datetime OUTPUT) As declare @DayAvail smallint declare @StationStartTime datetime declare @StationEndTime datetime declare @StartTime datetime declare @Skips integer declare @TimeToAllocate integer  select @Skips = 0,  @StartTime = @CheckDateTime,  @TimeToAllocate = @ETTR WHILE @TimeToAllocate > 0 and @Skips < 10 BEGIN  exec SVC_Get_Station_Work_Hours @STATIONID,  @StartTime,   @DayAvail OUTPUT,  @StationStartTime OUTPUT,  @StationEndTime OUTPUT  IF @DayAvail = 0 or (@StartTime >= @StationEndTime)  BEGIN  select @Skips = @Skips + 1  exec SVC_Inc_Time_To_Midnight @StartTime Output  continue  END  ELSE  BEGIN  IF @StartTime < @StationStartTime select @StartTime = @StationStartTime   IF @vCombinedDateTime is NULL select @vCombinedDateTime = @StartTime  exec SVC_Allocate_Time @StartTime,   @StationEndTime,   @TimeToAllocate output,   @vEndDateTime output  exec SVC_Inc_Time_To_Midnight @StartTime Output  select @Skips = @Skips + 1  END END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Calc_AvailStartEndTime] TO [DYNGRP]
GO
