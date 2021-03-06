SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80300SS_1] (@TRXSORCE char(13), @VCHRNMBR char(21), @DOCTYPE smallint, @DEYDESCR char(31)) AS  set nocount on SELECT TOP 1  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, VADCDTRO, DEX_ROW_ID FROM .PM80300 WHERE TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DEYDESCR = @DEYDESCR ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DEYDESCR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80300SS_1] TO [DYNGRP]
GO
