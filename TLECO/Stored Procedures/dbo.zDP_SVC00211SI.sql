SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00211SI] (@SRVRECTYPE smallint, @CALLNBR char(11), @SVC_Task_ID char(34), @SVC_Task_Name char(31), @USERID char(15), @DATE1 datetime, @TIME1 datetime, @SVC_Escalation_Status smallint, @ENDDATE datetime, @ENDTIME datetime, @SVC_Task_Start_Date int, @SVC_Task_Start_Time int, @SVC_Task_End_Date int, @SVC_Task_End_Time int, @SVC_Command_Text char(99), @SVC_Task_Comment char(99), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00211 (SRVRECTYPE, CALLNBR, SVC_Task_ID, SVC_Task_Name, USERID, DATE1, TIME1, SVC_Escalation_Status, ENDDATE, ENDTIME, SVC_Task_Start_Date, SVC_Task_Start_Time, SVC_Task_End_Date, SVC_Task_End_Time, SVC_Command_Text, SVC_Task_Comment) VALUES ( @SRVRECTYPE, @CALLNBR, @SVC_Task_ID, @SVC_Task_Name, @USERID, @DATE1, @TIME1, @SVC_Escalation_Status, @ENDDATE, @ENDTIME, @SVC_Task_Start_Date, @SVC_Task_Start_Time, @SVC_Task_End_Date, @SVC_Task_End_Time, @SVC_Command_Text, @SVC_Task_Comment) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00211SI] TO [DYNGRP]
GO
