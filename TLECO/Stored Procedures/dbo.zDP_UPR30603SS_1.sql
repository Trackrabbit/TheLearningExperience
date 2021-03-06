SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30603SS_1] (@EMPLOYID char(15), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  EMPLOYID, SEQNUMBR, RELATIONSHIP, FRSTNAME, MIDDLEINITIAL, LASTNAME, BRTHDATE, DEPENDENTSSN, GENDER, FLTMSTDNTCB, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, HealthInsDependentCov, Effective_Date, DEX_ROW_ID FROM .UPR30603 WHERE EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR ORDER BY EMPLOYID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30603SS_1] TO [DYNGRP]
GO
