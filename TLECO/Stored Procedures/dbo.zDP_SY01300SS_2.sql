SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01300SS_2] (@Language_ID smallint, @Begin_Group_Process_Name char(133)) AS  set nocount on SELECT TOP 1  Process_ID, PRODID, Language_ID, DPSERIES, Load_Factor, Service_Name, Priority, Queue_Time, Queue_Date, Recurrance_Interval, Script_Name, Deletable, Deletable_When_Running, REMOTE, Begin_Group_Process_Name, TRKPSATV, ServerNotifyScriptName, DEX_ROW_ID FROM .SY01300 WHERE Language_ID = @Language_ID AND Begin_Group_Process_Name = @Begin_Group_Process_Name ORDER BY Language_ID ASC, Begin_Group_Process_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01300SS_2] TO [DYNGRP]
GO
