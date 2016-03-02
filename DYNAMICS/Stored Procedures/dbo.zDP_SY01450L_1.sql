SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01450L_1] (@Backup_Schedule_Name_RS char(21), @Backup_Schedule_Name_RE char(21)) AS  set nocount on IF @Backup_Schedule_Name_RS IS NULL BEGIN SELECT TOP 25  Backup_Schedule_Name, USERID, CREATDDT, DAYSOFTHEWEEK, TIME1, ENABLED, DBNAME, fileName, WeeksToWait, DELETE1, Last_Successful_Backup, Last_Failed_Backup, DEX_ROW_ID FROM .SY01450 ORDER BY Backup_Schedule_Name DESC END ELSE IF @Backup_Schedule_Name_RS = @Backup_Schedule_Name_RE BEGIN SELECT TOP 25  Backup_Schedule_Name, USERID, CREATDDT, DAYSOFTHEWEEK, TIME1, ENABLED, DBNAME, fileName, WeeksToWait, DELETE1, Last_Successful_Backup, Last_Failed_Backup, DEX_ROW_ID FROM .SY01450 WHERE Backup_Schedule_Name = @Backup_Schedule_Name_RS ORDER BY Backup_Schedule_Name DESC END ELSE BEGIN SELECT TOP 25  Backup_Schedule_Name, USERID, CREATDDT, DAYSOFTHEWEEK, TIME1, ENABLED, DBNAME, fileName, WeeksToWait, DELETE1, Last_Successful_Backup, Last_Failed_Backup, DEX_ROW_ID FROM .SY01450 WHERE Backup_Schedule_Name BETWEEN @Backup_Schedule_Name_RS AND @Backup_Schedule_Name_RE ORDER BY Backup_Schedule_Name DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01450L_1] TO [DYNGRP]
GO
