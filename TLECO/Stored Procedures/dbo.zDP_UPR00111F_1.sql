SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00111F_1] (@EMPLOYID_RS char(15), @SEQNUMBR_RS int, @EMPLOYID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, RELATIONSHIP, COMMENTSTR20, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, GENDER, BRTHDATE, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, FLTMSTDNTCB, DEX_ROW_ID FROM .UPR00111 ORDER BY EMPLOYID ASC, SEQNUMBR ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, RELATIONSHIP, COMMENTSTR20, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, GENDER, BRTHDATE, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, FLTMSTDNTCB, DEX_ROW_ID FROM .UPR00111 WHERE EMPLOYID = @EMPLOYID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY EMPLOYID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, RELATIONSHIP, COMMENTSTR20, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, GENDER, BRTHDATE, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, FLTMSTDNTCB, DEX_ROW_ID FROM .UPR00111 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY EMPLOYID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00111F_1] TO [DYNGRP]
GO
