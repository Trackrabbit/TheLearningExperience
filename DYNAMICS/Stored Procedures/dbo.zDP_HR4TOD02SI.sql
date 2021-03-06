SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4TOD02SI] (@USERID char(15), @TODOSEQUENCE_I int, @DATETODO_I datetime, @TIMETODO_I datetime, @CATEGORYTODOLIST_I smallint, @PRIORITYTODOLIST_I smallint, @STATUSTODOLIST_I smallint, @ACTIVITYTODO_I char(81), @USERID2_I char(15), @Date_To_Do_Original datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR4TOD02 (USERID, TODOSEQUENCE_I, DATETODO_I, TIMETODO_I, CATEGORYTODOLIST_I, PRIORITYTODOLIST_I, STATUSTODOLIST_I, ACTIVITYTODO_I, USERID2_I, Date_To_Do_Original) VALUES ( @USERID, @TODOSEQUENCE_I, @DATETODO_I, @TIMETODO_I, @CATEGORYTODOLIST_I, @PRIORITYTODOLIST_I, @STATUSTODOLIST_I, @ACTIVITYTODO_I, @USERID2_I, @Date_To_Do_Original) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4TOD02SI] TO [DYNGRP]
GO
