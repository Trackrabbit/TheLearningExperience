SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2TR04F_2] (@COURSEID_I_RS char(7), @ICLASSID_I_RS char(7), @EMPID_I_RS char(15), @COURSEID_I_RE char(7), @ICLASSID_I_RE char(7), @EMPID_I_RE char(15)) AS  set nocount on IF @COURSEID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, COURSEID_I, ICLASSID_I, CB_I, DATE1, STR20DUMMY_I, CHANGEDATE_I, USERID, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TR04 ORDER BY COURSEID_I ASC, ICLASSID_I ASC, EMPID_I ASC END ELSE IF @COURSEID_I_RS = @COURSEID_I_RE BEGIN SELECT TOP 25  EMPID_I, COURSEID_I, ICLASSID_I, CB_I, DATE1, STR20DUMMY_I, CHANGEDATE_I, USERID, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TR04 WHERE COURSEID_I = @COURSEID_I_RS AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY COURSEID_I ASC, ICLASSID_I ASC, EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, COURSEID_I, ICLASSID_I, CB_I, DATE1, STR20DUMMY_I, CHANGEDATE_I, USERID, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TR04 WHERE COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY COURSEID_I ASC, ICLASSID_I ASC, EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2TR04F_2] TO [DYNGRP]
GO
