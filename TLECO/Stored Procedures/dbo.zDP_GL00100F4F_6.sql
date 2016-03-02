SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100F4F_6] (@ACTNUMBR_1_RS char(5), @ACTNUMBR_2_RS char(5), @ACTNUMBR_3_RS char(3), @ACTNUMBR_4_RS char(3), @RELID_RS int, @ACTNUMBR_1_RE char(5), @ACTNUMBR_2_RE char(5), @ACTNUMBR_3_RE char(3), @ACTNUMBR_4_RE char(3), @RELID_RE int) AS /* 14.00.0084.000 */ set nocount on IF @ACTNUMBR_1_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F4 ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, RELID ASC END ELSE IF @ACTNUMBR_1_RS = @ACTNUMBR_1_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F4 WHERE ACTNUMBR_1 = @ACTNUMBR_1_RS AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND RELID BETWEEN @RELID_RS AND @RELID_RE ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, RELID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, ACCATNUM, RELID, DEX_ROW_ID FROM .GL00100F4 WHERE ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND RELID BETWEEN @RELID_RS AND @RELID_RE ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, RELID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100F4F_6] TO [DYNGRP]
GO
