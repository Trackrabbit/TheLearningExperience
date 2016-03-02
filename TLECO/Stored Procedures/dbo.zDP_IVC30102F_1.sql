SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC30102F_1] (@INVCNMBR_RS char(21), @DOCTYPE_RS smallint, @CMPNTSEQ_RS int, @LNITMSEQ_RS int, @INVCNMBR_RE char(21), @DOCTYPE_RE smallint, @CMPNTSEQ_RE int, @LNITMSEQ_RE int) AS  set nocount on IF @INVCNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, NONINVEN, ITEMNMBR, DECPLCUR, DECPLQTY, ITMTSHID, IVITMTXB, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC30102 ORDER BY INVCNMBR ASC, DOCTYPE ASC, CMPNTSEQ ASC, LNITMSEQ ASC END ELSE IF @INVCNMBR_RS = @INVCNMBR_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, NONINVEN, ITEMNMBR, DECPLCUR, DECPLQTY, ITMTSHID, IVITMTXB, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC30102 WHERE INVCNMBR = @INVCNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY INVCNMBR ASC, DOCTYPE ASC, CMPNTSEQ ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, NONINVEN, ITEMNMBR, DECPLCUR, DECPLQTY, ITMTSHID, IVITMTXB, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC30102 WHERE INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY INVCNMBR ASC, DOCTYPE ASC, CMPNTSEQ ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC30102F_1] TO [DYNGRP]
GO
