SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DEFLTCOAF_1] (@INDUSTYP_RS smallint, @DEFCHRAC_1_RS char(9), @DEFCHRAC_2_RS char(9), @DEFCHRAC_3_RS char(9), @DEFCHRAC_4_RS char(9), @DEFCHRAC_5_RS char(9), @INDUSTYP_RE smallint, @DEFCHRAC_1_RE char(9), @DEFCHRAC_2_RE char(9), @DEFCHRAC_3_RE char(9), @DEFCHRAC_4_RE char(9), @DEFCHRAC_5_RE char(9)) AS  set nocount on IF @INDUSTYP_RS IS NULL BEGIN SELECT TOP 25  BUSNESS1, BUSNESS2, BUSNESS3, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, SERIES, SEQNUMBR, DEX_ROW_ID FROM .DEFLTCOA ORDER BY INDUSTYP ASC, DEFCHRAC_1 ASC, DEFCHRAC_2 ASC, DEFCHRAC_3 ASC, DEFCHRAC_4 ASC, DEFCHRAC_5 ASC END ELSE IF @INDUSTYP_RS = @INDUSTYP_RE BEGIN SELECT TOP 25  BUSNESS1, BUSNESS2, BUSNESS3, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, SERIES, SEQNUMBR, DEX_ROW_ID FROM .DEFLTCOA WHERE INDUSTYP = @INDUSTYP_RS AND DEFCHRAC_1 BETWEEN @DEFCHRAC_1_RS AND @DEFCHRAC_1_RE AND DEFCHRAC_2 BETWEEN @DEFCHRAC_2_RS AND @DEFCHRAC_2_RE AND DEFCHRAC_3 BETWEEN @DEFCHRAC_3_RS AND @DEFCHRAC_3_RE AND DEFCHRAC_4 BETWEEN @DEFCHRAC_4_RS AND @DEFCHRAC_4_RE AND DEFCHRAC_5 BETWEEN @DEFCHRAC_5_RS AND @DEFCHRAC_5_RE ORDER BY INDUSTYP ASC, DEFCHRAC_1 ASC, DEFCHRAC_2 ASC, DEFCHRAC_3 ASC, DEFCHRAC_4 ASC, DEFCHRAC_5 ASC END ELSE BEGIN SELECT TOP 25  BUSNESS1, BUSNESS2, BUSNESS3, INDUSTYP, DEFCHRAC_1, DEFCHRAC_2, DEFCHRAC_3, DEFCHRAC_4, DEFCHRAC_5, ACTDESCR, PSTNGTYP, ACCATNUM, TPCLBLNC, SERIES, SEQNUMBR, DEX_ROW_ID FROM .DEFLTCOA WHERE INDUSTYP BETWEEN @INDUSTYP_RS AND @INDUSTYP_RE AND DEFCHRAC_1 BETWEEN @DEFCHRAC_1_RS AND @DEFCHRAC_1_RE AND DEFCHRAC_2 BETWEEN @DEFCHRAC_2_RS AND @DEFCHRAC_2_RE AND DEFCHRAC_3 BETWEEN @DEFCHRAC_3_RS AND @DEFCHRAC_3_RE AND DEFCHRAC_4 BETWEEN @DEFCHRAC_4_RS AND @DEFCHRAC_4_RE AND DEFCHRAC_5 BETWEEN @DEFCHRAC_5_RS AND @DEFCHRAC_5_RE ORDER BY INDUSTYP ASC, DEFCHRAC_1 ASC, DEFCHRAC_2 ASC, DEFCHRAC_3 ASC, DEFCHRAC_4 ASC, DEFCHRAC_5 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DEFLTCOAF_1] TO [DYNGRP]
GO
