SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_PM_Performed]   (@EquipID integer,  @PMDetailID char(9),  @ScheduleID char(9),  @Type integer,   @PMType smallint,   @MeterType smallint,   @CheckDate datetime,   @Interval numeric(19,5)  ,  @CheckReading integer ,  @Performed tinyint OUTPUT,  @Out_Level integer OUTPUT) AS declare @LASTREADING numeric(19,5) declare @NeedInterval integer  select @Performed = 0   IF @Type = 1  BEGIN  IF exists( select * from SVC00305 where EQUIPID = @EquipID and  PMDTLID = @PMDetailID and  SCHEDID = @ScheduleID and  Meter_1_Level = @Interval)  select @Performed = 1  else  begin   select @Out_Level = @Interval  if  @CheckReading < @Out_Level   select @Performed = 1  end  END  ELSE  IF @Type = 2  BEGIN     select @LASTREADING = Max(IsNull(Meter_1_Level,0)) from SVC00305 where EQUIPID = @EquipID and  PMDTLID = @PMDetailID and  SCHEDID = @ScheduleID   if @LASTREADING is null or @LASTREADING = 0  Begin  select @LASTREADING = 0, @Out_Level = @CheckReading  if  @Out_Level < @Interval   select @Performed = 1  End  else  Begin  select @Out_Level = @LASTREADING + @Interval  if  @Out_Level > @CheckReading  select @Performed = 1  else  begin  select @Out_Level = @CheckReading  end   End   END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_PM_Performed] TO [DYNGRP]
GO
