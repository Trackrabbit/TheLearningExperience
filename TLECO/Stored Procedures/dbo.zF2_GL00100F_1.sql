SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zF2_GL00100F_1] (@ACTINDX_RS int, @ACTINDX_RE int, @RELID int) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  F3.ACTINDX, T3.ACTNUMBR_1, T3.ACTNUMBR_2, T3.ACTNUMBR_3, T3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, T3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F2 F3 WITH (nolock), .GL00100 T3 WHERE F3.RELID = @RELID AND F3.ACTINDX = T3.ACTINDX ORDER BY F3.ACTINDX ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  F3.ACTINDX, T3.ACTNUMBR_1, T3.ACTNUMBR_2, T3.ACTNUMBR_3, T3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, T3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F2 F3 WITH (nolock), .GL00100 T3 WHERE F3.ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND F3.RELID = @RELID AND F3.ACTINDX = T3.ACTINDX ORDER BY F3.ACTINDX ASC END ELSE BEGIN SELECT TOP 25  F3.ACTINDX, T3.ACTNUMBR_1, T3.ACTNUMBR_2, T3.ACTNUMBR_3, T3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, T3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F2 F3 WITH (nolock), .GL00100 T3 WHERE F3.ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND F3.RELID = @RELID AND F3.ACTINDX = T3.ACTINDX ORDER BY F3.ACTINDX ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zF2_GL00100F_1] TO [DYNGRP]
GO
