SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD01F_2] (@DATETODO_I_RS datetime, @TIMETODO_I_RS datetime, @DATETODO_I_RE datetime, @TIMETODO_I_RE datetime) AS  set nocount on IF @DATETODO_I_RS IS NULL BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 ORDER BY DATETODO_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC END ELSE IF @DATETODO_I_RS = @DATETODO_I_RE BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I = @DATETODO_I_RS AND TIMETODO_I BETWEEN @TIMETODO_I_RS AND @TIMETODO_I_RE ORDER BY DATETODO_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I BETWEEN @DATETODO_I_RS AND @DATETODO_I_RE AND TIMETODO_I BETWEEN @TIMETODO_I_RS AND @TIMETODO_I_RE ORDER BY DATETODO_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD01F_2] TO [DYNGRP]
GO
