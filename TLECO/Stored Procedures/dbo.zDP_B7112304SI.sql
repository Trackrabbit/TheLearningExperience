SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112304SI] (@APFRDCNM char(21), @APFRDCTY smallint, @LNITMSEQ int, @BSSI_Recognition_SNumber char(25), @DOCAMNT numeric(19,5), @XTNDPRCE numeric(19,5), @BSSI_Total_Schedule_Amou numeric(19,5), @BSSI_Total_Amount_Recogn numeric(19,5), @BSSI_Total_Amount_Remain numeric(19,5), @BSSI_Orig_Recog_Amt numeric(19,5), @BSSI_Adjustment_Amount numeric(19,5), @ENDDATE datetime, @BACHNUMB char(15), @VOIDED tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7112304 (APFRDCNM, APFRDCTY, LNITMSEQ, BSSI_Recognition_SNumber, DOCAMNT, XTNDPRCE, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, ENDDATE, BACHNUMB, VOIDED) VALUES ( @APFRDCNM, @APFRDCTY, @LNITMSEQ, @BSSI_Recognition_SNumber, @DOCAMNT, @XTNDPRCE, @BSSI_Total_Schedule_Amou, @BSSI_Total_Amount_Recogn, @BSSI_Total_Amount_Remain, @BSSI_Orig_Recog_Amt, @BSSI_Adjustment_Amount, @ENDDATE, @BACHNUMB, @VOIDED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112304SI] TO [DYNGRP]
GO
