SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPSLH01N_2] (@BS int, @EMPLOYID char(15), @PAYRCORD char(7), @EFFECTIVEDATE_I datetime, @SEQNUMBR int, @EMPLOYID_RS char(15), @PAYRCORD_RS char(7), @EFFECTIVEDATE_I_RS datetime, @SEQNUMBR_RS int, @EMPLOYID_RE char(15), @PAYRCORD_RE char(7), @EFFECTIVEDATE_I_RE datetime, @SEQNUMBR_RE int) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, EFFECTIVEDATE_I, SEQNUMBR, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, ANNUALSALARY_I, CHANGEREASON_I, USERID, CHANGEDATE_I, DEX_ROW_ID FROM .HRPSLH01 WHERE ( EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I AND SEQNUMBR < @SEQNUMBR OR EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I < @EFFECTIVEDATE_I OR EMPLOYID = @EMPLOYID AND PAYRCORD > @PAYRCORD OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, PAYRCORD ASC, EFFECTIVEDATE_I DESC, SEQNUMBR DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, EFFECTIVEDATE_I, SEQNUMBR, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, ANNUALSALARY_I, CHANGEREASON_I, USERID, CHANGEDATE_I, DEX_ROW_ID FROM .HRPSLH01 WHERE EMPLOYID = @EMPLOYID_RS AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RE AND @SEQNUMBR_RS AND ( EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I AND SEQNUMBR < @SEQNUMBR OR EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I < @EFFECTIVEDATE_I OR EMPLOYID = @EMPLOYID AND PAYRCORD > @PAYRCORD OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, PAYRCORD ASC, EFFECTIVEDATE_I DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, EFFECTIVEDATE_I, SEQNUMBR, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, ANNUALSALARY_I, CHANGEREASON_I, USERID, CHANGEDATE_I, DEX_ROW_ID FROM .HRPSLH01 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RE AND @EFFECTIVEDATE_I_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RE AND @SEQNUMBR_RS AND ( EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I AND SEQNUMBR < @SEQNUMBR OR EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I < @EFFECTIVEDATE_I OR EMPLOYID = @EMPLOYID AND PAYRCORD > @PAYRCORD OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, PAYRCORD ASC, EFFECTIVEDATE_I DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPSLH01N_2] TO [DYNGRP]
GO
