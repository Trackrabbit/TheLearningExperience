SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_Last_PMDate]  ( @Equipid integer,  @PMDetailID char(9),  @ScheduleID char(9),  @Frequency smallint,  @PMType smallint,  @AnnualPMDate datetime,  @LastPMDate datetime OUTPUT) AS declare @DEXID integer declare @PMSTAT integer  declare @msg varchar(255) declare @MinDate datetime  exec smGetMinDate @MinDate output if @Frequency = 1   BEGIN  select @LastPMDate = IsNull(@AnnualPMDate,@MinDate)   if @LastPMDate <> @MinDate  select @LastPMDate = DATEADD(yy,-1,@LastPMDate)   IF @LastPMDate is null or @LastPMDate = @MinDate  select @LastPMDate = IsNull(INSTDTE,@MinDate) from SVC00300 where EQUIPID = @Equipid  return  END  ELSE BEGIN   if @PMType = 1  BEGIN   select  @LastPMDate = MAX(LSTPMDTE) from SVC00305 where EQUIPID = @Equipid and SCHEDID = @ScheduleID and PMDTLID = @PMDetailID  select @LastPMDate = IsNull(@LastPMDate,@MinDate)  END   ELSE  BEGIN   select @LastPMDate = MAX(SVCLSTPMPERF) from SVC00305 where EQUIPID = @Equipid and SCHEDID = @ScheduleID and PMDTLID = @PMDetailID  select @LastPMDate = IsNull(@LastPMDate,@MinDate)  END   IF @LastPMDate is null or @LastPMDate =@MinDate  BEGIN   select @LastPMDate = IsNull(@AnnualPMDate,@MinDate)  IF @LastPMDate is null or @LastPMDate = @MinDate  select @LastPMDate = IsNull(INSTDTE, @MinDate) from SVC00300 where EQUIPID = @Equipid   else  select @LastPMDate = DATEADD(yy,-1,@LastPMDate)   END END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Last_PMDate] TO [DYNGRP]
GO
