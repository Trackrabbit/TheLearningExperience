SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Allocate_Time]   (@StartTime datetime,  @StationEndTime datetime,  @TimeToAllocate integer Output,  @EndTime datetime Output) As  declare @TimeToday integer  select @TimeToday = datediff(mi,@StartTime,@StationEndTime)  IF @TimeToAllocate > @TimeToday  BEGIN  select @TimeToAllocate = @TimeToAllocate - @TimeToday,  @EndTime = @StationEndTime  END  ELSE  BEGIN  select @EndTime = dateadd(mi,@TimeToAllocate,@StartTime)  select @TimeToAllocate = 0  END  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Allocate_Time] TO [DYNGRP]
GO
