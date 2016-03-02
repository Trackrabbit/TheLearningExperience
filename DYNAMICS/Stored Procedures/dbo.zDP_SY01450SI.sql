SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01450SI] (@Backup_Schedule_Name char(21), @USERID char(15), @CREATDDT datetime, @DAYSOFTHEWEEK binary(4), @TIME1 datetime, @ENABLED tinyint, @DBNAME char(11), @fileName char(255), @WeeksToWait smallint, @DELETE1 tinyint, @Last_Successful_Backup datetime, @Last_Failed_Backup datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01450 (Backup_Schedule_Name, USERID, CREATDDT, DAYSOFTHEWEEK, TIME1, ENABLED, DBNAME, fileName, WeeksToWait, DELETE1, Last_Successful_Backup, Last_Failed_Backup) VALUES ( @Backup_Schedule_Name, @USERID, @CREATDDT, @DAYSOFTHEWEEK, @TIME1, @ENABLED, @DBNAME, @fileName, @WeeksToWait, @DELETE1, @Last_Successful_Backup, @Last_Failed_Backup) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01450SI] TO [DYNGRP]
GO
