SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Obj_ListTechSchedule]  @TECHID  char (11) AS SELECT  convert(varchar(10),SVC00101.STRTDATE,101) as StartDate,   convert(varchar(15),SVC00101.STRTTIME,108) as StartTime,  convert(varchar(10),SVC00101.ENDDATE,101) as ENDDATE,   convert(varchar(15),SVC00101.ENDTME,108) as ENDTME, TECHSTAT,TECHID2, SVC00101.STRTDATE as StartDate1,  SVC00101.STRTTIME  as StartTime1, SVC00101.ENDDATE as ENDDATE1,  SVC00101.ENDTME as ENDTME1 FROM   SVC00101 where TECHID = @TECHID order by STRTDATE desc, STRTTIME desc exec SVC_Obj_UpdateLastAccess @TECHID  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Obj_ListTechSchedule] TO [DYNGRP]
GO
