SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2TRA03L_1] (@COURSEID_I_RS char(7), @ICLASSID_I_RS char(7), @COURSEID_I_RE char(7), @ICLASSID_I_RE char(7)) AS  set nocount on IF @COURSEID_I_RS IS NULL BEGIN SELECT TOP 25  COURSEID_I, ICLASSID_I, CLASSNAME_I, CLASSSTARTDATE_I, CLASSENDDATE_I, CLASSSTARTTIME_I, CLASSENDTIME_I, INSTRUCTOR_I, ROOM_I, NUMBERENROLLED_I, MAXNUMBER_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2TRA03 ORDER BY COURSEID_I DESC, ICLASSID_I DESC END ELSE IF @COURSEID_I_RS = @COURSEID_I_RE BEGIN SELECT TOP 25  COURSEID_I, ICLASSID_I, CLASSNAME_I, CLASSSTARTDATE_I, CLASSENDDATE_I, CLASSSTARTTIME_I, CLASSENDTIME_I, INSTRUCTOR_I, ROOM_I, NUMBERENROLLED_I, MAXNUMBER_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2TRA03 WHERE COURSEID_I = @COURSEID_I_RS AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE ORDER BY COURSEID_I DESC, ICLASSID_I DESC END ELSE BEGIN SELECT TOP 25  COURSEID_I, ICLASSID_I, CLASSNAME_I, CLASSSTARTDATE_I, CLASSENDDATE_I, CLASSSTARTTIME_I, CLASSENDTIME_I, INSTRUCTOR_I, ROOM_I, NUMBERENROLLED_I, MAXNUMBER_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2TRA03 WHERE COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE ORDER BY COURSEID_I DESC, ICLASSID_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2TRA03L_1] TO [DYNGRP]
GO
