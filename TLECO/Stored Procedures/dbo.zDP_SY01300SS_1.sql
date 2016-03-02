SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01300SS_1] (@Language_ID smallint, @PRODID smallint, @Process_ID smallint) AS  set nocount on SELECT TOP 1  Process_ID, PRODID, Language_ID, DPSERIES, Load_Factor, Service_Name, Priority, Queue_Time, Queue_Date, Recurrance_Interval, Script_Name, Deletable, Deletable_When_Running, REMOTE, Begin_Group_Process_Name, TRKPSATV, ServerNotifyScriptName, DEX_ROW_ID FROM .SY01300 WHERE Language_ID = @Language_ID AND PRODID = @PRODID AND Process_ID = @Process_ID ORDER BY Language_ID ASC, PRODID ASC, Process_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01300SS_1] TO [DYNGRP]
GO
