SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zF3_GL00100SS_3] (@ACTDESCR char(51), @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @RELID int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  T3.ACTINDX, F3.ACTNUMBR_1, F3.ACTNUMBR_2, F3.ACTNUMBR_3, F3.ACTNUMBR_4, T3.ACTALIAS, T3.MNACSGMT, T3.ACCTTYPE, F3.ACTDESCR, T3.PSTNGTYP, T3.ACCATNUM, T3.ACTIVE, T3.TPCLBLNC, T3.DECPLACS, T3.FXDORVAR, T3.BALFRCLC, T3.DSPLKUPS, T3.CNVRMTHD, T3.HSTRCLRT, T3.NOTEINDX, T3.CREATDDT, T3.MODIFDT, T3.USERDEF1, T3.USERDEF2, T3.PostSlsIn, T3.PostIvIn, T3.PostPurchIn, T3.PostPRIn, T3.ADJINFL, T3.INFLAREV, T3.INFLAEQU, T3.ACCTENTR, T3.USRDEFS1, T3.USRDEFS2, T3.Clear_Balance, T3.DEX_ROW_TS, T3.DEX_ROW_ID FROM .GL00100F3 F3, .GL00100 T3 WHERE F3.ACTDESCR = @ACTDESCR AND F3.ACTNUMBR_1 = @ACTNUMBR_1 AND F3.ACTNUMBR_2 = @ACTNUMBR_2 AND F3.ACTNUMBR_3 = @ACTNUMBR_3 AND F3.ACTNUMBR_4 = @ACTNUMBR_4 AND F3.RELID = @RELID AND F3.ACTDESCR = T3.ACTDESCR AND F3.ACTNUMBR_1 = T3.ACTNUMBR_1 AND F3.ACTNUMBR_2 = T3.ACTNUMBR_2 AND F3.ACTNUMBR_3 = T3.ACTNUMBR_3 AND F3.ACTNUMBR_4 = T3.ACTNUMBR_4 ORDER BY F3.ACTDESCR ASC, F3.ACTNUMBR_1 ASC, F3.ACTNUMBR_2 ASC, F3.ACTNUMBR_3 ASC, F3.ACTNUMBR_4 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zF3_GL00100SS_3] TO [DYNGRP]
GO