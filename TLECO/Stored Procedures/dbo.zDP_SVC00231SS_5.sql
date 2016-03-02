SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00231SS_5] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LINITMTYP char(3), @CMPNTSEQ int, @LNITMSEQ int, @SVC_Distribution_Type smallint, @ACTINDX int) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND CMPNTSEQ = @CMPNTSEQ AND LNITMSEQ = @LNITMSEQ AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, SVC_Distribution_Type ASC, ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00231SS_5] TO [DYNGRP]
GO
