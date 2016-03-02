SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80200SS_1] (@TRXSORCE char(13), @DOCNUMBR char(21), @VCHRNMBR char(21), @DEYDESCR char(31)) AS  set nocount on SELECT TOP 1  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, DEX_ROW_ID FROM .PM80200 WHERE TRXSORCE = @TRXSORCE AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND DEYDESCR = @DEYDESCR ORDER BY TRXSORCE ASC, DOCNUMBR ASC, VCHRNMBR ASC, DEYDESCR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80200SS_1] TO [DYNGRP]
GO