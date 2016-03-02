SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01450SS_1] (@Backup_Schedule_Name char(21)) AS  set nocount on SELECT TOP 1  Backup_Schedule_Name, USERID, CREATDDT, DAYSOFTHEWEEK, TIME1, ENABLED, DBNAME, fileName, WeeksToWait, DELETE1, Last_Successful_Backup, Last_Failed_Backup, DEX_ROW_ID FROM .SY01450 WHERE Backup_Schedule_Name = @Backup_Schedule_Name ORDER BY Backup_Schedule_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01450SS_1] TO [DYNGRP]
GO
