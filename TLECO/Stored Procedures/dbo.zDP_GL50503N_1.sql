SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50503N_1] (@BS int, @TRXDATE datetime, @JRNENTRY int, @ACTINDX int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @DEX_ROW_ID int, @TRXDATE_RS datetime, @JRNENTRY_RS int, @ACTINDX_RS int, @DEBITAMT_RS numeric(19,5), @CRDTAMNT_RS numeric(19,5), @TRXDATE_RE datetime, @JRNENTRY_RE int, @ACTINDX_RE int, @DEBITAMT_RE numeric(19,5), @CRDTAMNT_RE numeric(19,5)) AS  set nocount on IF @TRXDATE_RS IS NULL BEGIN SELECT TOP 25  TRXDATE, JRNENTRY, ORTRXSRC, ORCTRNUM, ACTINDX, DEBITAMT, CRDTAMNT, ACCTAMNT, DEX_ROW_ID FROM .GL50503 WHERE ( TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT = @CRDTAMNT AND DEX_ROW_ID > @DEX_ROW_ID OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT > @CRDTAMNT OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT > @DEBITAMT OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX > @ACTINDX OR TRXDATE = @TRXDATE AND JRNENTRY > @JRNENTRY OR TRXDATE > @TRXDATE ) ORDER BY TRXDATE ASC, JRNENTRY ASC, ACTINDX ASC, DEBITAMT ASC, CRDTAMNT ASC, DEX_ROW_ID ASC END ELSE IF @TRXDATE_RS = @TRXDATE_RE BEGIN SELECT TOP 25  TRXDATE, JRNENTRY, ORTRXSRC, ORCTRNUM, ACTINDX, DEBITAMT, CRDTAMNT, ACCTAMNT, DEX_ROW_ID FROM .GL50503 WHERE TRXDATE = @TRXDATE_RS AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND DEBITAMT BETWEEN @DEBITAMT_RS AND @DEBITAMT_RE AND CRDTAMNT BETWEEN @CRDTAMNT_RS AND @CRDTAMNT_RE AND ( TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT = @CRDTAMNT AND DEX_ROW_ID > @DEX_ROW_ID OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT > @CRDTAMNT OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT > @DEBITAMT OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX > @ACTINDX OR TRXDATE = @TRXDATE AND JRNENTRY > @JRNENTRY OR TRXDATE > @TRXDATE ) ORDER BY TRXDATE ASC, JRNENTRY ASC, ACTINDX ASC, DEBITAMT ASC, CRDTAMNT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXDATE, JRNENTRY, ORTRXSRC, ORCTRNUM, ACTINDX, DEBITAMT, CRDTAMNT, ACCTAMNT, DEX_ROW_ID FROM .GL50503 WHERE TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND DEBITAMT BETWEEN @DEBITAMT_RS AND @DEBITAMT_RE AND CRDTAMNT BETWEEN @CRDTAMNT_RS AND @CRDTAMNT_RE AND ( TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT = @CRDTAMNT AND DEX_ROW_ID > @DEX_ROW_ID OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT > @CRDTAMNT OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT > @DEBITAMT OR TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX > @ACTINDX OR TRXDATE = @TRXDATE AND JRNENTRY > @JRNENTRY OR TRXDATE > @TRXDATE ) ORDER BY TRXDATE ASC, JRNENTRY ASC, ACTINDX ASC, DEBITAMT ASC, CRDTAMNT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50503N_1] TO [DYNGRP]
GO
