SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00231F_3] (@SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @EQPLINE_RS int, @LINITMTYP_RS char(3), @CMPNTSEQ_RS int, @LNITMSEQ_RS int, @POSTED_RS tinyint, @SVC_Distribution_Type_RS smallint, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @EQPLINE_RE int, @LINITMTYP_RE char(3), @CMPNTSEQ_RE int, @LNITMSEQ_RE int, @POSTED_RE tinyint, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC00231 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00231F_3] TO [DYNGRP]
GO
