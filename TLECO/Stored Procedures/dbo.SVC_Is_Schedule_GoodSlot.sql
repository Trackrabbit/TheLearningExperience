SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create Procedure [dbo].[SVC_Is_Schedule_GoodSlot]  ( @StationID varchar(11),  @Ahhugah integer,  @FitDateTime datetime,  @FitEndDateTime datetime,  @GoodSlot tinyint output) As  select  @GoodSlot = 0  if (@Ahhugah = 1) or not exists(select * from SVC06300  where SVC06300.STATIONID = @StationID and  ((CONVERT(varchar(10),SVC06300.ECOMPDT,102) + ' ' +   CONVERT(varchar(10),SVC06300.EComp_Time,108) > @FitDateTime and  CONVERT(varchar(10),SVC06300.ECOMPDT,102) + ' ' +   CONVERT(varchar(10),SVC06300.EComp_Time,108) < @FitEndDateTime) or  (CONVERT(varchar(10),SVC06300.ETADTE,102) + ' ' +   CONVERT(varchar(10),SVC06300.ETATME,108) >= @FitDateTime and  CONVERT(varchar(10),SVC06300.ETADTE,102) + ' ' +   CONVERT(varchar(10),SVC06300.ETATME,108) <= @FitEndDateTime) or  (CONVERT(varchar(10),SVC06300.ETADTE,102) + ' ' +   CONVERT(varchar(10),SVC06300.ETATME,108) <= @FitDateTime and  CONVERT(varchar(10),SVC06300.ECOMPDT,102) + ' ' +   CONVERT(varchar(10),SVC06300.EComp_Time,108) > @FitEndDateTime)))  select @GoodSlot = 1 return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Is_Schedule_GoodSlot] TO [DYNGRP]
GO
