SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_TS_Tech_Work_Schedule] AS  select SVC00100.TECHID, IsNull(SVC00100.PHONE1,'') 'PHONE1', SVC00100.NAME,   SVC00100.OFFID, 0 'TB', SVC00100.WORKDYS_1 'MONDAY',  CONVERT(char(5),SVC00100.WORKSTRT_1,108) 'MONDAYSTART',   CONVERT(char(5),SVC00100.WORKEND_1,108) 'MONDAYEND',  SVC00100.WORKDYS_2 'TUESDAY',  CONVERT(char(5),SVC00100.WORKSTRT_2,108) 'TUESDAYSTART',   CONVERT(char(5),SVC00100.WORKEND_2,108) 'TUESDAYEND',  SVC00100.WORKDYS_3 'WEDNESDAY',   CONVERT(char(5),SVC00100.WORKSTRT_3,108) 'WEDNESDAYSTART',   CONVERT(char(5),SVC00100.WORKEND_3,108) 'WEDNESDAYEND',   SVC00100.WORKDYS_4 'THURSDAY',  CONVERT(char(5),SVC00100.WORKSTRT_4,108) 'THURSDAYSTART',   CONVERT(char(5),SVC00100.WORKEND_4,108) 'THURSDAYEND',   SVC00100.WORKDYS_5 'FRIDAY',   CONVERT(char(5),SVC00100.WORKSTRT_5,108) 'FRIDAYSTART',   CONVERT(char(5),SVC00100.WORKEND_5,108) 'FRIDAYEND',   SVC00100.WORKDYS_6 'SATURDAY',   CONVERT(char(5),SVC00100.WORKSTRT_6,108) 'SATURDAYSTART',  CONVERT(char(5),SVC00100.WORKEND_6,108) 'SATURDAYEND',   SVC00100.WORKDYS_7 'SUNDAY',   CONVERT(char(5),SVC00100.WORKSTRT_7,108) 'SUNDAYSTART',  CONVERT(char(5),SVC00100.WORKEND_7,108) 'SUNDAYEND'   from SVC00100 order by SVC00100.TECHID return    
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_Tech_Work_Schedule] TO [DYNGRP]
GO