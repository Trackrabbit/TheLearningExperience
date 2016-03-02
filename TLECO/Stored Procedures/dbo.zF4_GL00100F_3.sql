SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zF4_GL00100F_3] (@ACTDESCR_RS char(51), @ACTNUMBR_1_RS char(5), @ACTNUMBR_2_RS char(5), @ACTNUMBR_3_RS char(3), @ACTNUMBR_4_RS char(3), @ACTDESCR_RE char(51), @ACTNUMBR_1_RE char(5), @ACTNUMBR_2_RE char(5), @ACTNUMBR_3_RE char(3), @ACTNUMBR_4_RE char(3), @RELID int) AS /* 14.00.0084.000 */ set nocount on IF @ACTDESCR_RS IS NULL BEGIN SELECT TOP 25  T3.ACTINDX, F3.ACTNUMBR_1, F3.ACTNUMBR_2, F3.ACTNUMBR_3, F3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, F3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F4 F3 WITH (nolock), .GL00100 T3 WHERE F3.RELID = @RELID AND F3.ACTDESCR = T3.ACTDESCR AND F3.ACTNUMBR_1 = T3.ACTNUMBR_1 AND F3.ACTNUMBR_2 = T3.ACTNUMBR_2 AND F3.ACTNUMBR_3 = T3.ACTNUMBR_3 AND F3.ACTNUMBR_4 = T3.ACTNUMBR_4 ORDER BY F3.ACTDESCR ASC, F3.ACTNUMBR_1 ASC, F3.ACTNUMBR_2 ASC, F3.ACTNUMBR_3 ASC, F3.ACTNUMBR_4 ASC END ELSE IF @ACTDESCR_RS = @ACTDESCR_RE BEGIN SELECT TOP 25  T3.ACTINDX, F3.ACTNUMBR_1, F3.ACTNUMBR_2, F3.ACTNUMBR_3, F3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, F3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F4 F3 WITH (nolock), .GL00100 T3 WHERE F3.ACTDESCR BETWEEN @ACTDESCR_RS AND @ACTDESCR_RE AND F3.ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND F3.ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND F3.ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND F3.ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND F3.RELID = @RELID AND F3.ACTDESCR = T3.ACTDESCR AND F3.ACTNUMBR_1 = T3.ACTNUMBR_1 AND F3.ACTNUMBR_2 = T3.ACTNUMBR_2 AND F3.ACTNUMBR_3 = T3.ACTNUMBR_3 AND F3.ACTNUMBR_4 = T3.ACTNUMBR_4 ORDER BY F3.ACTDESCR ASC, F3.ACTNUMBR_1 ASC, F3.ACTNUMBR_2 ASC, F3.ACTNUMBR_3 ASC, F3.ACTNUMBR_4 ASC END ELSE BEGIN SELECT TOP 25  T3.ACTINDX, F3.ACTNUMBR_1, F3.ACTNUMBR_2, F3.ACTNUMBR_3, F3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, F3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F4 F3 WITH (nolock), .GL00100 T3 WHERE F3.ACTDESCR BETWEEN @ACTDESCR_RS AND @ACTDESCR_RE AND F3.ACTNUMBR_1 BETWEEN @ACTNUMBR_1_RS AND @ACTNUMBR_1_RE AND F3.ACTNUMBR_2 BETWEEN @ACTNUMBR_2_RS AND @ACTNUMBR_2_RE AND F3.ACTNUMBR_3 BETWEEN @ACTNUMBR_3_RS AND @ACTNUMBR_3_RE AND F3.ACTNUMBR_4 BETWEEN @ACTNUMBR_4_RS AND @ACTNUMBR_4_RE AND F3.RELID = @RELID AND F3.ACTDESCR = T3.ACTDESCR AND F3.ACTNUMBR_1 = T3.ACTNUMBR_1 AND F3.ACTNUMBR_2 = T3.ACTNUMBR_2 AND F3.ACTNUMBR_3 = T3.ACTNUMBR_3 AND F3.ACTNUMBR_4 = T3.ACTNUMBR_4 ORDER BY F3.ACTDESCR ASC, F3.ACTNUMBR_1 ASC, F3.ACTNUMBR_2 ASC, F3.ACTNUMBR_3 ASC, F3.ACTNUMBR_4 ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zF4_GL00100F_3] TO [DYNGRP]
GO
