SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80200L_1] (@TRXSORCE_RS char(13), @DOCNUMBR_RS char(21), @VCHRNMBR_RS char(21), @DEYDESCR_RS char(31), @TRXSORCE_RE char(13), @DOCNUMBR_RE char(21), @VCHRNMBR_RE char(21), @DEYDESCR_RE char(31)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 ORDER BY TRXSORCE DESC, DOCNUMBR DESC, VCHRNMBR DESC, DEYDESCR DESC, DEX_ROW_ID DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 WHERE TRXSORCE = @TRXSORCE_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DEYDESCR BETWEEN @DEYDESCR_RS AND @DEYDESCR_RE ORDER BY TRXSORCE DESC, DOCNUMBR DESC, VCHRNMBR DESC, DEYDESCR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DEYDESCR BETWEEN @DEYDESCR_RS AND @DEYDESCR_RE ORDER BY TRXSORCE DESC, DOCNUMBR DESC, VCHRNMBR DESC, DEYDESCR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80200L_1] TO [DYNGRP]
GO