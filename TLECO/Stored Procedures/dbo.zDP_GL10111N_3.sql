SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10111N_3] (@BS int, @YEAR1 smallint, @ACTINDX int, @PERIODID smallint, @Ledger_ID smallint, @YEAR1_RS smallint, @ACTINDX_RS int, @PERIODID_RS smallint, @Ledger_ID_RS smallint, @YEAR1_RE smallint, @ACTINDX_RE int, @PERIODID_RE smallint, @Ledger_ID_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ( YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR YEAR1 = @YEAR1 AND ACTINDX > @ACTINDX OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE YEAR1 = @YEAR1_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ( YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR YEAR1 = @YEAR1 AND ACTINDX > @ACTINDX OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ( YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND PERIODID > @PERIODID OR YEAR1 = @YEAR1 AND ACTINDX > @ACTINDX OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, ACTINDX ASC, PERIODID ASC, Ledger_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10111N_3] TO [DYNGRP]
GO