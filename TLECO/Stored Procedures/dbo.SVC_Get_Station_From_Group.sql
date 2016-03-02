SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Get_Station_From_Group]   (@STATIONID varchar(11) OUTPUT,  @STATIONGROUP char(11),  @Status smallint,  @Priority numeric(19,5)) As select SVC06300.STATIONID,  MAX(CONVERT(varchar(10),SVC06300.ECOMPDT,102) + ' ' +   CONVERT(varchar(10),SVC06300.EComp_Time,108)) 'LASTTIME'  into #TEMPSTATION   from SVC06300 INNER JOIN SVC06002 ON (SVC06300.STATIONID = SVC06002.STATIONID)  where SVC06002.DEPSTATGRP = @STATIONGROUP and   SVC06300.Status < = @Status and   SVC06300.SVC_Depot_Priority <= @Priority  group by SVC06300.STATIONID  select @STATIONID = SVC06002.STATIONID FROM SVC06002 WHERE SVC06002.DEPSTATGRP = @STATIONGROUP  AND SVC06002.STATIONID NOT IN(SELECT STATIONID FROM #TEMPSTATION) if @STATIONID IS NULL  select @STATIONID = IsNUll(STATIONID,'')   from #TEMPSTATION   where LASTTIME = (select MIN(LASTTIME)  from #TEMPSTATION) if @STATIONID =''  select @STATIONID = MIN(SVC06001.STATIONID)  from SVC06001 INNER JOIN SVC06002 ON (SVC06001.STATIONID = SVC06002.STATIONID)  where SVC06002.DEPSTATGRP = @STATIONGROUP return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Station_From_Group] TO [DYNGRP]
GO
