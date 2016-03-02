SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD01N_4] (@BS int, @DATETODO_I datetime, @CATEGORYTODOLIST_I smallint, @TIMETODO_I datetime, @DEX_ROW_ID int, @DATETODO_I_RS datetime, @CATEGORYTODOLIST_I_RS smallint, @TIMETODO_I_RS datetime, @DATETODO_I_RE datetime, @CATEGORYTODOLIST_I_RE smallint, @TIMETODO_I_RE datetime) AS  set nocount on IF @DATETODO_I_RS IS NULL BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE ( DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I = @TIMETODO_I AND DEX_ROW_ID > @DEX_ROW_ID OR DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I > @TIMETODO_I OR DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I > @CATEGORYTODOLIST_I OR DATETODO_I > @DATETODO_I ) ORDER BY DATETODO_I ASC, CATEGORYTODOLIST_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC END ELSE IF @DATETODO_I_RS = @DATETODO_I_RE BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I = @DATETODO_I_RS AND CATEGORYTODOLIST_I BETWEEN @CATEGORYTODOLIST_I_RS AND @CATEGORYTODOLIST_I_RE AND TIMETODO_I BETWEEN @TIMETODO_I_RS AND @TIMETODO_I_RE AND ( DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I = @TIMETODO_I AND DEX_ROW_ID > @DEX_ROW_ID OR DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I > @TIMETODO_I OR DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I > @CATEGORYTODOLIST_I OR DATETODO_I > @DATETODO_I ) ORDER BY DATETODO_I ASC, CATEGORYTODOLIST_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I BETWEEN @DATETODO_I_RS AND @DATETODO_I_RE AND CATEGORYTODOLIST_I BETWEEN @CATEGORYTODOLIST_I_RS AND @CATEGORYTODOLIST_I_RE AND TIMETODO_I BETWEEN @TIMETODO_I_RS AND @TIMETODO_I_RE AND ( DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I = @TIMETODO_I AND DEX_ROW_ID > @DEX_ROW_ID OR DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I > @TIMETODO_I OR DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I > @CATEGORYTODOLIST_I OR DATETODO_I > @DATETODO_I ) ORDER BY DATETODO_I ASC, CATEGORYTODOLIST_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD01N_4] TO [DYNGRP]
GO
