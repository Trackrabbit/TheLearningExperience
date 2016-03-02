SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10110F_4] (@ACCATNUM_RS smallint, @YEAR1_RS smallint, @PERIODID_RS smallint, @Ledger_ID_RS smallint, @ACTNUMBR_1_RS char(5), @ACTNUMBR_2_RS char(5), @ACTNUMBR_3_RS char(3), @ACTNUMBR_4_RS char(3), @ACCATNUM_RE smallint, @YEAR1_RE smallint, @PERIODID_RE smallint, @Ledger_ID_RE smallint, @ACTNUMBR_1_RE char(5), @ACTNUMBR_2_RE char(5), @ACTNUMBR_3_RE char(3), @ACTNUMBR_4_RE char(3)) AS /* 14.00.0084.000 */ set nocount on IF @ACCATNUM_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, PERDBLNC, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10110 ORDER BY ACCATNUM ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, DEX_ROW_ID ASC END ELSE IF @ACCATNUM_RS = @ACCATNUM_RE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, PERDBLNC, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10110 WHERE ACCATNUM = @ACCATNUM_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE ORDER BY ACCATNUM ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, YEAR1, PERIODID, Ledger_ID, PERDBLNC, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL10110 WHERE ACCATNUM BETWEEN @ACCATNUM_RS AND @ACCATNUM_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE ORDER BY ACCATNUM ASC, YEAR1 ASC, PERIODID ASC, Ledger_ID ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10110F_4] TO [DYNGRP]
GO
