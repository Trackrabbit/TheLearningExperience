SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Reset_Schedule_Status]  AS   update SVC06301 set Status = 0,   ENDDATE = CONVERT(varchar(20),GETDATE(),102) + ' 00:00:00',   ENDTIME = '01/01/1900 ' + CONVERT(varchar(20),GETDATE(),108)  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Reset_Schedule_Status] TO [DYNGRP]
GO
