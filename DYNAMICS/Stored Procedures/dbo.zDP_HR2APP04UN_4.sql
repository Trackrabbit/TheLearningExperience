SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP04UN_4] (@BS int, @MAJOR char(31), @MAJOR_RS char(31), @MAJOR_RE char(31)) AS  set nocount on IF @MAJOR_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE ( MAJOR > @MAJOR ) ORDER BY MAJOR ASC, DEX_ROW_ID ASC END ELSE IF @MAJOR_RS = @MAJOR_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE MAJOR = @MAJOR_RS AND ( MAJOR > @MAJOR ) ORDER BY MAJOR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE MAJOR BETWEEN @MAJOR_RS AND @MAJOR_RE AND ( MAJOR > @MAJOR ) ORDER BY MAJOR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP04UN_4] TO [DYNGRP]
GO
