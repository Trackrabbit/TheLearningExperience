SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10111N_1] (@BS int, @ACTINDX int, @YEAR1 smallint, @PERIODID smallint, @Ledger_ID smallint, @ACTINDX_RS int, @YEAR1_RS smallint, @PERIODID_RS smallint, @Ledger_ID_RS smallint, @ACTINDX_RE int, @YEAR1_RE smallint, @PERIODID_RE smallint, @Ledger_ID_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ( ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR ACTINDX = @ACTINDX AND YEAR1 > @YEAR1 OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ACTINDX = @ACTINDX_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ( ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR ACTINDX = @ACTINDX AND YEAR1 > @YEAR1 OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ( ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR ACTINDX = @ACTINDX AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR ACTINDX = @ACTINDX AND YEAR1 > @YEAR1 OR ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10111N_1] TO [DYNGRP]
GO
