SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112304SS_1] (@BSSI_Recognition_SNumber char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  APFRDCNM, APFRDCTY, LNITMSEQ, BSSI_Recognition_SNumber, DOCAMNT, XTNDPRCE, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, ENDDATE, BACHNUMB, VOIDED, DEX_ROW_ID FROM .B7112304 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Recognition_SNumber ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112304SS_1] TO [DYNGRP]
GO
