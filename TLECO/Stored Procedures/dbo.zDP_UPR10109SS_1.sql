SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10109SS_1] (@YEAR1 smallint, @EMPLOYID char(15), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  YEAR1, EMPLOYID, SEQNUMBR, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, BRTHDATE, CoveredForYear, CoveredMonth_1, CoveredMonth_2, CoveredMonth_3, CoveredMonth_4, CoveredMonth_5, CoveredMonth_6, CoveredMonth_7, CoveredMonth_8, CoveredMonth_9, CoveredMonth_10, CoveredMonth_11, CoveredMonth_12, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR10109 WHERE YEAR1 = @YEAR1 AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR ORDER BY YEAR1 ASC, EMPLOYID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10109SS_1] TO [DYNGRP]
GO
