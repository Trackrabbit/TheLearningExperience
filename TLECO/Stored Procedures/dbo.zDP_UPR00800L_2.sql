SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00800L_2] (@LOCALTAX_RS char(7), @EMPLOYID_RS char(15), @LOCALTAX_RE char(7), @EMPLOYID_RE char(15)) AS  set nocount on IF @LOCALTAX_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, LOCALTAX, LCLFGSTS, AULCLTAX, NUMOFEXM, INACTIVE, NOTEINDX, ADTLLOCWTHDNG, DEX_ROW_ID FROM .UPR00800 ORDER BY LOCALTAX DESC, EMPLOYID DESC END ELSE IF @LOCALTAX_RS = @LOCALTAX_RE BEGIN SELECT TOP 25  EMPLOYID, LOCALTAX, LCLFGSTS, AULCLTAX, NUMOFEXM, INACTIVE, NOTEINDX, ADTLLOCWTHDNG, DEX_ROW_ID FROM .UPR00800 WHERE LOCALTAX = @LOCALTAX_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY LOCALTAX DESC, EMPLOYID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, LOCALTAX, LCLFGSTS, AULCLTAX, NUMOFEXM, INACTIVE, NOTEINDX, ADTLLOCWTHDNG, DEX_ROW_ID FROM .UPR00800 WHERE LOCALTAX BETWEEN @LOCALTAX_RS AND @LOCALTAX_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY LOCALTAX DESC, EMPLOYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00800L_2] TO [DYNGRP]
GO