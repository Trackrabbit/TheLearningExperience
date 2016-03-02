SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPRTDJEF_1] (@JRNENTRY_RS int, @SEQNUMBR_RS int, @JRNENTRY_RE int, @SEQNUMBR_RE int) AS /* 14.00.0084.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  ACCTTYPE, ORDOCNUM, SEQNUMBR, CMPNYNAM, INTERID, JRNENTRY, TRXDATE, ORTRXSRC, SOURCDOC, AUDITTRAIL, BACHNUMB, REFRENCE, CURNCYID, Original_JE, ACTINDX, ACTDESCR, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .NCPRTDJE ORDER BY JRNENTRY ASC, SEQNUMBR ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  ACCTTYPE, ORDOCNUM, SEQNUMBR, CMPNYNAM, INTERID, JRNENTRY, TRXDATE, ORTRXSRC, SOURCDOC, AUDITTRAIL, BACHNUMB, REFRENCE, CURNCYID, Original_JE, ACTINDX, ACTDESCR, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .NCPRTDJE WHERE JRNENTRY = @JRNENTRY_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY JRNENTRY ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  ACCTTYPE, ORDOCNUM, SEQNUMBR, CMPNYNAM, INTERID, JRNENTRY, TRXDATE, ORTRXSRC, SOURCDOC, AUDITTRAIL, BACHNUMB, REFRENCE, CURNCYID, Original_JE, ACTINDX, ACTDESCR, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .NCPRTDJE WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY JRNENTRY ASC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPRTDJEF_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPRTDJEF_1] TO [public]
GO
