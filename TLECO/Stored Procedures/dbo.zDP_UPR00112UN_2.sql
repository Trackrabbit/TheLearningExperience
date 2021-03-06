SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00112UN_2] (@BS int, @DEGREE char(31), @DEGREE_RS char(31), @DEGREE_RE char(31)) AS  set nocount on IF @DEGREE_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR00112 WHERE ( DEGREE > @DEGREE ) ORDER BY DEGREE ASC, DEX_ROW_ID ASC END ELSE IF @DEGREE_RS = @DEGREE_RE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR00112 WHERE DEGREE = @DEGREE_RS AND ( DEGREE > @DEGREE ) ORDER BY DEGREE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR00112 WHERE DEGREE BETWEEN @DEGREE_RS AND @DEGREE_RE AND ( DEGREE > @DEGREE ) ORDER BY DEGREE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00112UN_2] TO [DYNGRP]
GO
