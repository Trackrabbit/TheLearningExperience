SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SEE30303N_2] (@BS int, @GLPOSTDT datetime, @ITEMNMBR char(31), @TRXQTY numeric(19,5), @EXTDCOST numeric(19,5), @SEQNUMBR int, @GLPOSTDT_RS datetime, @ITEMNMBR_RS char(31), @TRXQTY_RS numeric(19,5), @EXTDCOST_RS numeric(19,5), @SEQNUMBR_RS int, @GLPOSTDT_RE datetime, @ITEMNMBR_RE char(31), @TRXQTY_RE numeric(19,5), @EXTDCOST_RE numeric(19,5), @SEQNUMBR_RE int) AS  set nocount on IF @GLPOSTDT_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, DOCDATE, GLPOSTDT, DOCNUMBR, DOCTYPE, LOCNCODE, RCPTNMBR, RCTSEQNM, PCHSRCTY, QTYTYPE, UOFM, TRXQTYInBase, TRXQTY, VARIANCEQTY, UNITCOST, EXTDCOST, DECPLQTY, DECPLCUR, IsOverrideReceipt, IsOverrideRelieved, OverrideRelievedDate, RCPTNMBR1, HSTMODUL, ORTRXSRC, LNSEQNBR, LNITMSEQ, CMPNTSEQ, SRCRFRNCNMBR, VENDORID, PONUMBER, TRXREFERENCE, VCTNMTHD, IVIVINDX, IVIVOFIX, JRNENTRY, TRXSORCE, DEBITAMT, CRDTAMNT, DATE1, TIME1, DEX_ROW_ID FROM .SEE30303 WHERE ( GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY = @TRXQTY AND EXTDCOST = @EXTDCOST AND SEQNUMBR > @SEQNUMBR OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY = @TRXQTY AND EXTDCOST > @EXTDCOST OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY > @TRXQTY OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR > @ITEMNMBR OR GLPOSTDT > @GLPOSTDT ) ORDER BY GLPOSTDT ASC, ITEMNMBR ASC, TRXQTY ASC, EXTDCOST ASC, SEQNUMBR ASC END ELSE IF @GLPOSTDT_RS = @GLPOSTDT_RE BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, DOCDATE, GLPOSTDT, DOCNUMBR, DOCTYPE, LOCNCODE, RCPTNMBR, RCTSEQNM, PCHSRCTY, QTYTYPE, UOFM, TRXQTYInBase, TRXQTY, VARIANCEQTY, UNITCOST, EXTDCOST, DECPLQTY, DECPLCUR, IsOverrideReceipt, IsOverrideRelieved, OverrideRelievedDate, RCPTNMBR1, HSTMODUL, ORTRXSRC, LNSEQNBR, LNITMSEQ, CMPNTSEQ, SRCRFRNCNMBR, VENDORID, PONUMBER, TRXREFERENCE, VCTNMTHD, IVIVINDX, IVIVOFIX, JRNENTRY, TRXSORCE, DEBITAMT, CRDTAMNT, DATE1, TIME1, DEX_ROW_ID FROM .SEE30303 WHERE GLPOSTDT = @GLPOSTDT_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND TRXQTY BETWEEN @TRXQTY_RS AND @TRXQTY_RE AND EXTDCOST BETWEEN @EXTDCOST_RS AND @EXTDCOST_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY = @TRXQTY AND EXTDCOST = @EXTDCOST AND SEQNUMBR > @SEQNUMBR OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY = @TRXQTY AND EXTDCOST > @EXTDCOST OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY > @TRXQTY OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR > @ITEMNMBR OR GLPOSTDT > @GLPOSTDT ) ORDER BY GLPOSTDT ASC, ITEMNMBR ASC, TRXQTY ASC, EXTDCOST ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, DOCDATE, GLPOSTDT, DOCNUMBR, DOCTYPE, LOCNCODE, RCPTNMBR, RCTSEQNM, PCHSRCTY, QTYTYPE, UOFM, TRXQTYInBase, TRXQTY, VARIANCEQTY, UNITCOST, EXTDCOST, DECPLQTY, DECPLCUR, IsOverrideReceipt, IsOverrideRelieved, OverrideRelievedDate, RCPTNMBR1, HSTMODUL, ORTRXSRC, LNSEQNBR, LNITMSEQ, CMPNTSEQ, SRCRFRNCNMBR, VENDORID, PONUMBER, TRXREFERENCE, VCTNMTHD, IVIVINDX, IVIVOFIX, JRNENTRY, TRXSORCE, DEBITAMT, CRDTAMNT, DATE1, TIME1, DEX_ROW_ID FROM .SEE30303 WHERE GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND TRXQTY BETWEEN @TRXQTY_RS AND @TRXQTY_RE AND EXTDCOST BETWEEN @EXTDCOST_RS AND @EXTDCOST_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY = @TRXQTY AND EXTDCOST = @EXTDCOST AND SEQNUMBR > @SEQNUMBR OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY = @TRXQTY AND EXTDCOST > @EXTDCOST OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR = @ITEMNMBR AND TRXQTY > @TRXQTY OR GLPOSTDT = @GLPOSTDT AND ITEMNMBR > @ITEMNMBR OR GLPOSTDT > @GLPOSTDT ) ORDER BY GLPOSTDT ASC, ITEMNMBR ASC, TRXQTY ASC, EXTDCOST ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SEE30303N_2] TO [DYNGRP]
GO