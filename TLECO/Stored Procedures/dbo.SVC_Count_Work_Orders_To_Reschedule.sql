SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[SVC_Count_Work_Orders_To_Reschedule]  (@NUMWO integer OUTPUT) AS declare @MinDate datetime  exec smGetMinDate @MinDate output  select @NUMWO = count(WO.WORKORDNUM)  from SVC06100 WO   WHERE WO.WORECTYPE < 3 and   (WO.Commit_Date = @MinDate or WO.NUMRESCHED = 0)   
GO
GRANT EXECUTE ON  [dbo].[SVC_Count_Work_Orders_To_Reschedule] TO [DYNGRP]
GO
