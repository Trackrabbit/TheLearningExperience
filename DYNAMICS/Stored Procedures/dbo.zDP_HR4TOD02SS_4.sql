SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD02SS_4] (@USERID char(15), @DATETODO_I datetime, @CATEGORYTODOLIST_I smallint, @TIMETODO_I datetime) AS  set nocount on SELECT TOP 1  USERID, TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, USERID2_I, Date_To_Do_Original, DEX_ROW_ID FROM .HR4TOD02 WHERE USERID = @USERID AND DATETODO_I = @DATETODO_I AND CATEGORYTODOLIST_I = @CATEGORYTODOLIST_I AND TIMETODO_I = @TIMETODO_I ORDER BY USERID ASC, DATETODO_I ASC, CATEGORYTODOLIST_I ASC, TIMETODO_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD02SS_4] TO [DYNGRP]
GO