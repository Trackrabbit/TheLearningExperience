SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP04UN_2] (@BS int, @DEGREE char(31), @DEGREE_RS char(31), @DEGREE_RE char(31)) AS  set nocount on IF @DEGREE_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP04 WHERE ( DEGREE > @DEGREE ) ORDER BY DEGREE ASC, DEX_ROW_ID ASC END ELSE IF @DEGREE_RS = @DEGREE_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP04 WHERE DEGREE = @DEGREE_RS AND ( DEGREE > @DEGREE ) ORDER BY DEGREE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP04 WHERE DEGREE BETWEEN @DEGREE_RS AND @DEGREE_RE AND ( DEGREE > @DEGREE ) ORDER BY DEGREE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP04UN_2] TO [DYNGRP]
GO
