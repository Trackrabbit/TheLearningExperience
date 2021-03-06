SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10108SS_1] (@YEAR1 smallint, @EMPLOYID char(15), @SEQNUMBR int, @Effective_Date datetime) AS  set nocount on SELECT TOP 1  YEAR1, EMPLOYID, SEQNUMBR, Effective_Date, HealthInsDependentCov, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, BRTHDATE, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR10108 WHERE YEAR1 = @YEAR1 AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND Effective_Date = @Effective_Date ORDER BY YEAR1 ASC, EMPLOYID ASC, SEQNUMBR ASC, Effective_Date ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10108SS_1] TO [DYNGRP]
GO
