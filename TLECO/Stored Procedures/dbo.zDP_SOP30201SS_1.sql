SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP30201SS_1] (@TRXSORCE char(13), @SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, LNITMSEQ, CUSTNMBR, CUSTNAME, DOCDATE, DOCNUMBR, RMDTYPAL, PYMTTYPE, AMNTPAID, OAMTPAID, CHEKBKID, CHEKNMBR, CARDNAME, RCTNCCRD, EXPNDATE, AUTHCODE, PYMNTDAT, GLPOSTDT, CASHINDEX, DEPINDEX, DELETE1, CURNCYID, CURRNIDX, XCHGRATE, DENXRATE, RATETPID, RTCLCMTD, EXGTBLID, EXCHDATE, MCTRXSTT, TIME1, TRXSORCE, DEX_ROW_ID FROM .SOP30201 WHERE TRXSORCE = @TRXSORCE AND SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ ORDER BY TRXSORCE ASC, SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30201SS_1] TO [DYNGRP]
GO
