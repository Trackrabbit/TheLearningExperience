SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD01L_3] (@DATETODO_I_RS datetime, @TIMETODO_I_RS datetime, @ACTIVITYTODO_I_RS char(81), @DATETODO_I_RE datetime, @TIMETODO_I_RE datetime, @ACTIVITYTODO_I_RE char(81)) AS  set nocount on IF @DATETODO_I_RS IS NULL BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 ORDER BY DATETODO_I DESC, TIMETODO_I DESC, ACTIVITYTODO_I DESC, DEX_ROW_ID DESC END ELSE IF @DATETODO_I_RS = @DATETODO_I_RE BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I = @DATETODO_I_RS AND TIMETODO_I BETWEEN @TIMETODO_I_RS AND @TIMETODO_I_RE AND ACTIVITYTODO_I BETWEEN @ACTIVITYTODO_I_RS AND @ACTIVITYTODO_I_RE ORDER BY DATETODO_I DESC, TIMETODO_I DESC, ACTIVITYTODO_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I BETWEEN @DATETODO_I_RS AND @DATETODO_I_RE AND TIMETODO_I BETWEEN @TIMETODO_I_RS AND @TIMETODO_I_RE AND ACTIVITYTODO_I BETWEEN @ACTIVITYTODO_I_RS AND @ACTIVITYTODO_I_RE ORDER BY DATETODO_I DESC, TIMETODO_I DESC, ACTIVITYTODO_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD01L_3] TO [DYNGRP]
GO
