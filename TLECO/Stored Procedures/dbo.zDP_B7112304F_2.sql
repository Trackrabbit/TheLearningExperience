SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112304F_2] (@APFRDCNM_RS char(21), @APFRDCTY_RS smallint, @BSSI_Recognition_SNumber_RS char(25), @LNITMSEQ_RS int, @APFRDCNM_RE char(21), @APFRDCTY_RE smallint, @BSSI_Recognition_SNumber_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @APFRDCNM_RS IS NULL BEGIN SELECT TOP 25  APFRDCNM, APFRDCTY, LNITMSEQ, BSSI_Recognition_SNumber, DOCAMNT, XTNDPRCE, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, ENDDATE, BACHNUMB, VOIDED, DEX_ROW_ID FROM .B7112304 ORDER BY APFRDCNM ASC, APFRDCTY ASC, BSSI_Recognition_SNumber ASC, LNITMSEQ ASC END ELSE IF @APFRDCNM_RS = @APFRDCNM_RE BEGIN SELECT TOP 25  APFRDCNM, APFRDCTY, LNITMSEQ, BSSI_Recognition_SNumber, DOCAMNT, XTNDPRCE, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, ENDDATE, BACHNUMB, VOIDED, DEX_ROW_ID FROM .B7112304 WHERE APFRDCNM = @APFRDCNM_RS AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY APFRDCNM ASC, APFRDCTY ASC, BSSI_Recognition_SNumber ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  APFRDCNM, APFRDCTY, LNITMSEQ, BSSI_Recognition_SNumber, DOCAMNT, XTNDPRCE, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, ENDDATE, BACHNUMB, VOIDED, DEX_ROW_ID FROM .B7112304 WHERE APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY APFRDCNM ASC, APFRDCTY ASC, BSSI_Recognition_SNumber ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112304F_2] TO [DYNGRP]
GO