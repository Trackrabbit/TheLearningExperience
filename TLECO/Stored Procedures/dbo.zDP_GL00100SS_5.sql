SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00100SS_5] (@ACCATNUM smallint, @MNACSGMT char(67), @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTALIAS, MNACSGMT, ACCTTYPE, ACTDESCR, PSTNGTYP, ACCATNUM, ACTIVE, TPCLBLNC, DECPLACS, FXDORVAR, BALFRCLC, DSPLKUPS, CNVRMTHD, HSTRCLRT, NOTEINDX, CREATDDT, MODIFDT, USERDEF1, USERDEF2, PostSlsIn, PostIvIn, PostPurchIn, PostPRIn, ADJINFL, INFLAREV, INFLAEQU, ACCTENTR, USRDEFS1, USRDEFS2, Clear_Balance, DEX_ROW_TS, DEX_ROW_ID FROM .GL00100 WHERE ACCATNUM = @ACCATNUM AND MNACSGMT = @MNACSGMT AND ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 ORDER BY ACCATNUM ASC, MNACSGMT ASC, ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00100SS_5] TO [DYNGRP]
GO
