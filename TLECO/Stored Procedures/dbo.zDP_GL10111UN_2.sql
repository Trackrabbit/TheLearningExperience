SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10111UN_2] (@BS int, @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @YEAR1 smallint, @PERIODID smallint, @Ledger_ID smallint, @ACCATNUM smallint, @ACTNUMBR_1_RS char(5), @ACTNUMBR_2_RS char(5), @ACTNUMBR_3_RS char(3), @ACTNUMBR_4_RS char(3), @YEAR1_RS smallint, @PERIODID_RS smallint, @Ledger_ID_RS smallint, @ACCATNUM_RS smallint, @ACTNUMBR_1_RE char(5), @ACTNUMBR_2_RE char(5), @ACTNUMBR_3_RE char(3), @ACTNUMBR_4_RE char(3), @YEAR1_RE smallint, @PERIODID_RE smallint, @Ledger_ID_RE smallint, @ACCATNUM_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ACTNUMBR_1_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ( ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID = @Ledger_ID AND ACCATNUM > @ACCATNUM OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 > @YEAR1 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 > @ACTNUMBR_4 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 > @ACTNUMBR_3 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 > @ACTNUMBR_2 OR ACTNUMBR_1 > @ACTNUMBR_1 ) ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC, ACCATNUM ASC, DEX_ROW_ID ASC END ELSE IF @ACTNUMBR_1_RS = @ACTNUMBR_1_RE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ACTNUMBR_1 = @ACTNUMBR_1_RS AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ACCATNUM BETWEEN @ACCATNUM_RS AND @ACCATNUM_RE AND ( ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID = @Ledger_ID AND ACCATNUM > @ACCATNUM OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 > @YEAR1 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 > @ACTNUMBR_4 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 > @ACTNUMBR_3 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 > @ACTNUMBR_2 OR ACTNUMBR_1 > @ACTNUMBR_1 ) ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC, ACCATNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10111 WHERE ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ACCATNUM BETWEEN @ACCATNUM_RS AND @ACCATNUM_RE AND ( ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID = @Ledger_ID AND ACCATNUM > @ACCATNUM OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND Ledger_ID > @Ledger_ID OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND YEAR1 > @YEAR1 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 > @ACTNUMBR_4 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 > @ACTNUMBR_3 OR ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 > @ACTNUMBR_2 OR ACTNUMBR_1 > @ACTNUMBR_1 ) ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC, ACCATNUM ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10111UN_2] TO [DYNGRP]
GO
