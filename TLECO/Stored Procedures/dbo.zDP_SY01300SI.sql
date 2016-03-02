SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01300SI] (@Process_ID smallint, @PRODID smallint, @Language_ID smallint, @DPSERIES smallint, @Load_Factor smallint, @Service_Name char(255), @Priority smallint, @Queue_Time datetime, @Queue_Date datetime, @Recurrance_Interval smallint, @Script_Name char(81), @Deletable tinyint, @Deletable_When_Running tinyint, @REMOTE tinyint, @Begin_Group_Process_Name char(133), @TRKPSATV tinyint, @ServerNotifyScriptName char(81), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01300 (Process_ID, PRODID, Language_ID, DPSERIES, Load_Factor, Service_Name, Priority, Queue_Time, Queue_Date, Recurrance_Interval, Script_Name, Deletable, Deletable_When_Running, REMOTE, Begin_Group_Process_Name, TRKPSATV, ServerNotifyScriptName) VALUES ( @Process_ID, @PRODID, @Language_ID, @DPSERIES, @Load_Factor, @Service_Name, @Priority, @Queue_Time, @Queue_Date, @Recurrance_Interval, @Script_Name, @Deletable, @Deletable_When_Running, @REMOTE, @Begin_Group_Process_Name, @TRKPSATV, @ServerNotifyScriptName) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01300SI] TO [DYNGRP]
GO
