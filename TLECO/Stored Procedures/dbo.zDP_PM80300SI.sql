SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80300SI] (@USERID char(15), @TIME1 datetime, @VENDORID char(15), @DOCTYPE smallint, @VCHRNMBR char(21), @PMVDMSGS binary(4), @DOCDATE datetime, @DOCNUMBR char(21), @DOCAMNT numeric(19,5), @CURTRXAM numeric(19,5), @DISTKNAM numeric(19,5), @DISCAMNT numeric(19,5), @DISCDATE datetime, @TRXSORCE char(13), @TEN99AMNT numeric(19,5), @WROFAMNT numeric(19,5), @DISAMTAV numeric(19,5), @PRCHAMNT numeric(19,5), @TRDISAMT numeric(19,5), @MSCCHAMT numeric(19,5), @FRTAMNT numeric(19,5), @TAXAMNT numeric(19,5), @TTLPYMTS numeric(19,5), @CHEKBKID char(15), @PSTGDATE datetime, @CURNCYID char(15), @DEYDESCR char(31), @VADCDTRO char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM80300 (USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, WROFAMNT, DISAMTAV, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, VADCDTRO) VALUES ( @USERID, @TIME1, @VENDORID, @DOCTYPE, @VCHRNMBR, @PMVDMSGS, @DOCDATE, @DOCNUMBR, @DOCAMNT, @CURTRXAM, @DISTKNAM, @DISCAMNT, @DISCDATE, @TRXSORCE, @TEN99AMNT, @WROFAMNT, @DISAMTAV, @PRCHAMNT, @TRDISAMT, @MSCCHAMT, @FRTAMNT, @TAXAMNT, @TTLPYMTS, @CHEKBKID, @PSTGDATE, @CURNCYID, @DEYDESCR, @VADCDTRO) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80300SI] TO [DYNGRP]
GO
