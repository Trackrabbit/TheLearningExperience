SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00112N_1] (@BS int, @EMPLOYID char(15), @SEQNUMBR int, @EMPLOYID_RS char(15), @SEQNUMBR_RS int, @EMPLOYID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR00112 WHERE ( EMPLOYID = @EMPLOYID AND SEQNUMBR > @SEQNUMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, SEQNUMBR ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR00112 WHERE EMPLOYID = @EMPLOYID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( EMPLOYID = @EMPLOYID AND SEQNUMBR > @SEQNUMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR00112 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( EMPLOYID = @EMPLOYID AND SEQNUMBR > @SEQNUMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00112N_1] TO [DYNGRP]
GO