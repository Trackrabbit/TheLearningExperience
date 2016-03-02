SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2TRA01SS_1] (@COURSENAME_I char(31)) AS  set nocount on SELECT TOP 1  COURSENAME_I, COURSEID_I, COURSESUBJECT_I, ROOM_I, INSTRUCTOR_I, COURSEPREREQS_I_1, COURSEPREREQS_I_2, COURSEPREREQS_I_3, COURSEPREREQS_I_4, COURSEPREREQS_I_5, COURSEINHOUSE_I, COURSECOST_I, EMPLOYEECOST_I, EMPLOYERCOST_I, INSTRUCTORFEE_I, MISCCOST_I, CREDITHOURS_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2TRA01 WHERE COURSENAME_I = @COURSENAME_I ORDER BY COURSENAME_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2TRA01SS_1] TO [DYNGRP]
GO
