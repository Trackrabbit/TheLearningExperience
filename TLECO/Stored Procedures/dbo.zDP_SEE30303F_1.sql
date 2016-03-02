SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SEE30303F_1] (@ITEMNMBR_RS char(31), @DOCDATE_RS datetime, @RCTSEQNM_RS int, @SEQNUMBR_RS int, @ITEMNMBR_RE char(31), @DOCDATE_RE datetime, @RCTSEQNM_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, DOCDATE, GLPOSTDT, DOCNUMBR, DOCTYPE, LOCNCODE, RCPTNMBR, RCTSEQNM, PCHSRCTY, QTYTYPE, UOFM, TRXQTYInBase, TRXQTY, VARIANCEQTY, UNITCOST, EXTDCOST, DECPLQTY, DECPLCUR, IsOverrideReceipt, IsOverrideRelieved, OverrideRelievedDate, RCPTNMBR1, HSTMODUL, ORTRXSRC, LNSEQNBR, LNITMSEQ, CMPNTSEQ, SRCRFRNCNMBR, VENDORID, PONUMBER, TRXREFERENCE, VCTNMTHD, IVIVINDX, IVIVOFIX, JRNENTRY, TRXSORCE, DEBITAMT, CRDTAMNT, DATE1, TIME1, DEX_ROW_ID FROM .SEE30303 ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC, SEQNUMBR ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, DOCDATE, GLPOSTDT, DOCNUMBR, DOCTYPE, LOCNCODE, RCPTNMBR, RCTSEQNM, PCHSRCTY, QTYTYPE, UOFM, TRXQTYInBase, TRXQTY, VARIANCEQTY, UNITCOST, EXTDCOST, DECPLQTY, DECPLCUR, IsOverrideReceipt, IsOverrideRelieved, OverrideRelievedDate, RCPTNMBR1, HSTMODUL, ORTRXSRC, LNSEQNBR, LNITMSEQ, CMPNTSEQ, SRCRFRNCNMBR, VENDORID, PONUMBER, TRXREFERENCE, VCTNMTHD, IVIVINDX, IVIVOFIX, JRNENTRY, TRXSORCE, DEBITAMT, CRDTAMNT, DATE1, TIME1, DEX_ROW_ID FROM .SEE30303 WHERE ITEMNMBR = @ITEMNMBR_RS AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, DOCDATE, GLPOSTDT, DOCNUMBR, DOCTYPE, LOCNCODE, RCPTNMBR, RCTSEQNM, PCHSRCTY, QTYTYPE, UOFM, TRXQTYInBase, TRXQTY, VARIANCEQTY, UNITCOST, EXTDCOST, DECPLQTY, DECPLCUR, IsOverrideReceipt, IsOverrideRelieved, OverrideRelievedDate, RCPTNMBR1, HSTMODUL, ORTRXSRC, LNSEQNBR, LNITMSEQ, CMPNTSEQ, SRCRFRNCNMBR, VENDORID, PONUMBER, TRXREFERENCE, VCTNMTHD, IVIVINDX, IVIVOFIX, JRNENTRY, TRXSORCE, DEBITAMT, CRDTAMNT, DATE1, TIME1, DEX_ROW_ID FROM .SEE30303 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SEE30303F_1] TO [DYNGRP]
GO
