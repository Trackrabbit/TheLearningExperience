SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPRA0111SS_1] (@EMPLOYID char(15), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  EMPLOYID, SEQNUMBR, RELATIONSHIP, COMMENTSTR20, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, GENDER, BRTHDATE, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, FLTMSTDNTCB, DEX_ROW_ID FROM .UPRA0111 WHERE EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR ORDER BY EMPLOYID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPRA0111SS_1] TO [DYNGRP]
GO
