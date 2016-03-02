SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK000103F_3] (@ACTNUMBR_1_RS char(5), @ACTNUMBR_2_RS char(5), @ACTNUMBR_3_RS char(3), @ACTNUMBR_4_RS char(3), @LK_Link_No_RS int, @LineNumber_RS smallint, @ACTNUMBR_1_RE char(5), @ACTNUMBR_2_RE char(5), @ACTNUMBR_3_RE char(3), @ACTNUMBR_4_RE char(3), @LK_Link_No_RE int, @LineNumber_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ACTNUMBR_1_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000103 ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, LK_Link_No ASC, LineNumber ASC END ELSE IF @ACTNUMBR_1_RS = @ACTNUMBR_1_RE BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000103 WHERE ACTNUMBR_1 = @ACTNUMBR_1_RS AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND LineNumber BETWEEN @LineNumber_RS AND @LineNumber_RE ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, LK_Link_No ASC, LineNumber ASC END ELSE BEGIN SELECT TOP 25  LK_Link_No, LineNumber, JRNENTRY, ACTINDX, SEQNUMBR, TRXAMNT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, OPENYEAR, CURRNIDX, RCTRXSEQ, TRXDATE, DEX_ROW_ID FROM .LK000103 WHERE ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND LineNumber BETWEEN @LineNumber_RS AND @LineNumber_RE ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, LK_Link_No ASC, LineNumber ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000103F_3] TO [DYNGRP]
GO
