SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP04F_1] (@APPLICANTNUMBER_I_RS numeric(19,5), @ISEQUENCENUMBER_I_RS smallint, @APPLICANTNUMBER_I_RE numeric(19,5), @ISEQUENCENUMBER_I_RE smallint) AS  set nocount on IF @APPLICANTNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 ORDER BY APPLICANTNUMBER_I ASC, ISEQUENCENUMBER_I ASC END ELSE IF @APPLICANTNUMBER_I_RS = @APPLICANTNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I_RS AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE ORDER BY APPLICANTNUMBER_I ASC, ISEQUENCENUMBER_I ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2APP04 WHERE APPLICANTNUMBER_I BETWEEN @APPLICANTNUMBER_I_RS AND @APPLICANTNUMBER_I_RE AND ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE ORDER BY APPLICANTNUMBER_I ASC, ISEQUENCENUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP04F_1] TO [DYNGRP]
GO
