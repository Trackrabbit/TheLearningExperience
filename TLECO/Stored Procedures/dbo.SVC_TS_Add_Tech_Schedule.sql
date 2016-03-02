SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_TS_Add_Tech_Schedule]   (@TECHID char(11),  @STARTDATE datetime,    @STARTTIME datetime,    @ENDDATE datetime,      @ENDTIME datetime,      @TECHSTAT char(11),  @BACKTECH char(11)) AS insert into SVC00101   VALUES(@TECHID,@STARTDATE + ' 00:00:00','01/01/1900 ' + @STARTTIME,@ENDDATE + ' 00:00:00',  '01/01/1900 ' + @ENDTIME,@TECHSTAT,@BACKTECH)    
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_Add_Tech_Schedule] TO [DYNGRP]
GO