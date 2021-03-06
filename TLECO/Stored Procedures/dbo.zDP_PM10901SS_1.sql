SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10901SS_1] (@USERID char(15), @TIME1 datetime, @VENDORID char(15), @DOCTYPE smallint, @VCHRNMBR char(21), @DEYDESCR char(31)) AS  set nocount on SELECT TOP 1  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, VOIDDATE, VADCDTRO, DEX_ROW_ID FROM .PM10901 WHERE USERID = @USERID AND TIME1 = @TIME1 AND VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND VCHRNMBR = @VCHRNMBR AND DEYDESCR = @DEYDESCR ORDER BY USERID ASC, TIME1 ASC, VENDORID ASC, DOCTYPE ASC, VCHRNMBR ASC, DEYDESCR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10901SS_1] TO [DYNGRP]
GO
