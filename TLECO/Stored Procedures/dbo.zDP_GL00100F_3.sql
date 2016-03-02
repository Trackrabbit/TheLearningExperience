SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100F_3] (@ACTDESCR_RS char(51), @ACTNUMBR_1_RS char(5), @ACTNUMBR_2_RS char(5), @ACTNUMBR_3_RS char(3), @ACTNUMBR_4_RS char(3), @ACTDESCR_RE char(51), @ACTNUMBR_1_RE char(5), @ACTNUMBR_2_RE char(5), @ACTNUMBR_3_RE char(3), @ACTNUMBR_4_RE char(3)) AS /* 14.00.0084.000 */ set nocount on IF @ACTDESCR_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, PSTNGTYP, ACCATNUM, ACTIVE, TPCLBLNC, DECPLACS, FXDORVAR, BALFRCLC, DSPLKUPS, CNVRMTHD, HSTRCLRT, NOTEINDX, CREATDDT, MODIFDT, USERDEF1, USERDEF2, PostSlsIn, PostIvIn, PostPurchIn, PostPRIn, ADJINFL, INFLAREV, INFLAEQU, ACCTENTR, USRDEFS1, USRDEFS2, Clear_Balance, DEX_ROW_TS, DEX_ROW_ID FROM .GL00100 ORDER BY ACTDESCR ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC END ELSE IF @ACTDESCR_RS = @ACTDESCR_RE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, PSTNGTYP, ACCATNUM, ACTIVE, TPCLBLNC, DECPLACS, FXDORVAR, BALFRCLC, DSPLKUPS, CNVRMTHD, HSTRCLRT, NOTEINDX, CREATDDT, MODIFDT, USERDEF1, USERDEF2, PostSlsIn, PostIvIn, PostPurchIn, PostPRIn, ADJINFL, INFLAREV, INFLAEQU, ACCTENTR, USRDEFS1, USRDEFS2, Clear_Balance, DEX_ROW_TS, DEX_ROW_ID FROM .GL00100 WHERE ACTDESCR = @ACTDESCR_RS AND ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE ORDER BY ACTDESCR ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, PSTNGTYP, ACCATNUM, ACTIVE, TPCLBLNC, DECPLACS, FXDORVAR, BALFRCLC, DSPLKUPS, CNVRMTHD, HSTRCLRT, NOTEINDX, CREATDDT, MODIFDT, USERDEF1, USERDEF2, PostSlsIn, PostIvIn, PostPurchIn, PostPRIn, ADJINFL, INFLAREV, INFLAEQU, ACCTENTR, USRDEFS1, USRDEFS2, Clear_Balance, DEX_ROW_TS, DEX_ROW_ID FROM .GL00100 WHERE ACTDESCR BETWEEN @ACTDESCR_RS AND @ACTDESCR_RE AND ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE ORDER BY ACTDESCR ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100F_3] TO [DYNGRP]
GO
