SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30231UN_4] (@BS int, @SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LINITMTYP char(3), @LNITMSEQ int, @POSTED tinyint, @SEQNUMBR int, @SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @EQPLINE_RS int, @LINITMTYP_RS char(3), @LNITMSEQ_RS int, @POSTED_RS tinyint, @SEQNUMBR_RS int, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @EQPLINE_RE int, @LINITMTYP_RE char(3), @LNITMSEQ_RE int, @POSTED_RE tinyint, @SEQNUMBR_RE int) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC30231 WHERE ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND POSTED = @POSTED AND SEQNUMBR > @SEQNUMBR OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND POSTED > @POSTED OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ > @LNITMSEQ OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP > @LINITMTYP OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE > @EQPLINE OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, LNITMSEQ ASC, POSTED ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC30231 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND POSTED = @POSTED AND SEQNUMBR > @SEQNUMBR OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND POSTED > @POSTED OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ > @LNITMSEQ OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP > @LINITMTYP OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE > @EQPLINE OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, LNITMSEQ ASC, POSTED ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC30231 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND POSTED = @POSTED AND SEQNUMBR > @SEQNUMBR OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND POSTED > @POSTED OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ > @LNITMSEQ OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP > @LINITMTYP OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE > @EQPLINE OR SRVRECTYPE = @SRVRECTYPE AND CALLNBR > @CALLNBR OR SRVRECTYPE > @SRVRECTYPE ) ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, LNITMSEQ ASC, POSTED ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30231UN_4] TO [DYNGRP]
GO
