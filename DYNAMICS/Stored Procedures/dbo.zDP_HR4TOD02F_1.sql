SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD02F_1] (@USERID_RS char(15), @TODOSEQUENCE_I_RS int, @USERID_RE char(15), @TODOSEQUENCE_I_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, USERID2_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD02 ORDER BY USERID ASC, TODOSEQUENCE_I ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, USERID2_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD02 WHERE USERID = @USERID_RS AND TODOSEQUENCE_I BETWEEN @TODOSEQUENCE_I_RS AND @TODOSEQUENCE_I_RE ORDER BY USERID ASC, TODOSEQUENCE_I ASC END ELSE BEGIN SELECT TOP 25  USERID, TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, USERID2_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD02 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TODOSEQUENCE_I BETWEEN @TODOSEQUENCE_I_RS AND @TODOSEQUENCE_I_RE ORDER BY USERID ASC, TODOSEQUENCE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD02F_1] TO [DYNGRP]
GO
