SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80200L_3] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 ORDER BY DEX_ROW_ID DESC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80200L_3] TO [DYNGRP]
GO