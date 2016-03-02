SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP04F_3] (@GPABASE_RS char(3), @GPA_RS char(5), @GPABASE_RE char(3), @GPA_RE char(5)) AS  set nocount on IF @GPABASE_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 ORDER BY GPABASE ASC, GPA DESC, DEX_ROW_ID ASC END ELSE IF @GPABASE_RS = @GPABASE_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE GPABASE = @GPABASE_RS AND GPA BETWEEN @GPA_RE AND @GPA_RS ORDER BY GPABASE ASC, GPA DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE GPABASE BETWEEN @GPABASE_RS AND @GPABASE_RE AND GPA BETWEEN @GPA_RE AND @GPA_RS ORDER BY GPABASE ASC, GPA DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP04F_3] TO [DYNGRP]
GO
