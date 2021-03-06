SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD01SS_3] (@DATETODO_I datetime, @TIMETODO_I datetime, @ACTIVITYTODO_I char(81)) AS  set nocount on SELECT TOP 1  TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, COMPANYCODE_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD01 WHERE DATETODO_I = @DATETODO_I AND TIMETODO_I = @TIMETODO_I AND ACTIVITYTODO_I = @ACTIVITYTODO_I ORDER BY DATETODO_I ASC, TIMETODO_I ASC, ACTIVITYTODO_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD01SS_3] TO [DYNGRP]
GO
