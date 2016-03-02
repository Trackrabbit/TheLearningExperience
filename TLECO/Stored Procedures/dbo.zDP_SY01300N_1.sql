SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01300N_1] (@BS int, @Language_ID smallint, @PRODID smallint, @Process_ID smallint, @Language_ID_RS smallint, @PRODID_RS smallint, @Process_ID_RS smallint, @Language_ID_RE smallint, @PRODID_RE smallint, @Process_ID_RE smallint) AS  set nocount on IF @Language_ID_RS IS NULL BEGIN SELECT TOP 25  Process_ID, PRODID, Language_ID, DPSERIES, Load_Factor, Service_Name, Priority, Queue_Time, Queue_Date, Recurrance_Interval, Script_Name, Deletable, Deletable_When_Running, REMOTE, Begin_Group_Process_Name, TRKPSATV, ServerNotifyScriptName, DEX_ROW_ID FROM .SY01300 WHERE ( Language_ID = @Language_ID AND PRODID = @PRODID AND Process_ID > @Process_ID OR Language_ID = @Language_ID AND PRODID > @PRODID OR Language_ID > @Language_ID ) ORDER BY Language_ID ASC, PRODID ASC, Process_ID ASC END ELSE IF @Language_ID_RS = @Language_ID_RE BEGIN SELECT TOP 25  Process_ID, PRODID, Language_ID, DPSERIES, Load_Factor, Service_Name, Priority, Queue_Time, Queue_Date, Recurrance_Interval, Script_Name, Deletable, Deletable_When_Running, REMOTE, Begin_Group_Process_Name, TRKPSATV, ServerNotifyScriptName, DEX_ROW_ID FROM .SY01300 WHERE Language_ID = @Language_ID_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Process_ID BETWEEN @Process_ID_RS AND @Process_ID_RE AND ( Language_ID = @Language_ID AND PRODID = @PRODID AND Process_ID > @Process_ID OR Language_ID = @Language_ID AND PRODID > @PRODID OR Language_ID > @Language_ID ) ORDER BY Language_ID ASC, PRODID ASC, Process_ID ASC END ELSE BEGIN SELECT TOP 25  Process_ID, PRODID, Language_ID, DPSERIES, Load_Factor, Service_Name, Priority, Queue_Time, Queue_Date, Recurrance_Interval, Script_Name, Deletable, Deletable_When_Running, REMOTE, Begin_Group_Process_Name, TRKPSATV, ServerNotifyScriptName, DEX_ROW_ID FROM .SY01300 WHERE Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Process_ID BETWEEN @Process_ID_RS AND @Process_ID_RE AND ( Language_ID = @Language_ID AND PRODID = @PRODID AND Process_ID > @Process_ID OR Language_ID = @Language_ID AND PRODID > @PRODID OR Language_ID > @Language_ID ) ORDER BY Language_ID ASC, PRODID ASC, Process_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01300N_1] TO [DYNGRP]
GO
