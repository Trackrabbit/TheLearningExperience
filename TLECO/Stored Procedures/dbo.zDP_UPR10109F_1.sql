SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10109F_1] (@YEAR1_RS smallint, @EMPLOYID_RS char(15), @SEQNUMBR_RS int, @YEAR1_RE smallint, @EMPLOYID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  YEAR1, EMPLOYID, SEQNUMBR, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, BRTHDATE, CoveredForYear, CoveredMonth_1, CoveredMonth_2, CoveredMonth_3, CoveredMonth_4, CoveredMonth_5, CoveredMonth_6, CoveredMonth_7, CoveredMonth_8, CoveredMonth_9, CoveredMonth_10, CoveredMonth_11, CoveredMonth_12, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR10109 ORDER BY YEAR1 ASC, EMPLOYID ASC, SEQNUMBR ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  YEAR1, EMPLOYID, SEQNUMBR, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, BRTHDATE, CoveredForYear, CoveredMonth_1, CoveredMonth_2, CoveredMonth_3, CoveredMonth_4, CoveredMonth_5, CoveredMonth_6, CoveredMonth_7, CoveredMonth_8, CoveredMonth_9, CoveredMonth_10, CoveredMonth_11, CoveredMonth_12, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR10109 WHERE YEAR1 = @YEAR1_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY YEAR1 ASC, EMPLOYID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  YEAR1, EMPLOYID, SEQNUMBR, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, BRTHDATE, CoveredForYear, CoveredMonth_1, CoveredMonth_2, CoveredMonth_3, CoveredMonth_4, CoveredMonth_5, CoveredMonth_6, CoveredMonth_7, CoveredMonth_8, CoveredMonth_9, CoveredMonth_10, CoveredMonth_11, CoveredMonth_12, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR10109 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY YEAR1 ASC, EMPLOYID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10109F_1] TO [DYNGRP]
GO