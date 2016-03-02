SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Schedule_All_Work_Orders] (@ERROR integer OUTPUT) AS  set nocount on  declare @STATUS integer select @ERROR=0 if not exists (select * from SVC06301)   insert into SVC06301  VALUES(CONVERT(varchar(20),GETDATE(),102) + ' 00:00:00',   '01/01/1900 ' + CONVERT(varchar(20),GETDATE(),108),   0,CONVERT(varchar(20),GETDATE(),102) + ' 00:00:00',   '01/01/1900 ' + CONVERT(varchar(20),GETDATE(),108),   CONVERT(varchar(20),GETDATE(),102) + ' 00:00:00',   '01/01/1900 ' + CONVERT(varchar(20),GETDATE(),108))  update SVC06301   set @STATUS = Status,  Status = 1 if @STATUS = 0  BEGIN   update SVC06301 set Status = 1,   STRTDATE = CONVERT(varchar(20),GETDATE(),102) + ' 00:00:00',   STRTTIME = '01/01/1900 ' + CONVERT(varchar(20),GETDATE(),108)   EXEC SVC_ReSchedule_All_Work_Orders @ERROR OUTPUT  update SVC06301 set Status = 0,   ENDDATE = CONVERT(varchar(20),GETDATE(),102) + ' 00:00:00',   ENDTIME = '01/01/1900 ' + CONVERT(varchar(20),GETDATE(),108)  END ELSE   select @ERROR = 100  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Schedule_All_Work_Orders] TO [DYNGRP]
GO
