SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00231L_5] (@SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @EQPLINE_RS int, @LINITMTYP_RS char(3), @CMPNTSEQ_RS int, @LNITMSEQ_RS int, @SVC_Distribution_Type_RS smallint, @ACTINDX_RS int, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @EQPLINE_RE int, @LINITMTYP_RE char(3), @CMPNTSEQ_RE int, @LNITMSEQ_RE int, @SVC_Distribution_Type_RE smallint, @ACTINDX_RE int) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 ORDER BY SRVRECTYPE DESC, CALLNBR DESC, EQPLINE DESC, LINITMTYP DESC, CMPNTSEQ DESC, LNITMSEQ DESC, SVC_Distribution_Type DESC, ACTINDX DESC, DEX_ROW_ID DESC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY SRVRECTYPE DESC, CALLNBR DESC, EQPLINE DESC, LINITMTYP DESC, CMPNTSEQ DESC, LNITMSEQ DESC, SVC_Distribution_Type DESC, ACTINDX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY SRVRECTYPE DESC, CALLNBR DESC, EQPLINE DESC, LINITMTYP DESC, CMPNTSEQ DESC, LNITMSEQ DESC, SVC_Distribution_Type DESC, ACTINDX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00231L_5] TO [DYNGRP]
GO
