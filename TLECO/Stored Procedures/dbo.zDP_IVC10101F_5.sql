SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10101F_5] (@INVCNMBR_RS char(21), @INVCNMBR_RE char(21)) AS  set nocount on IF @INVCNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 ORDER BY INVCNMBR ASC, DEX_ROW_ID ASC END ELSE IF @INVCNMBR_RS = @INVCNMBR_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 WHERE INVCNMBR = @INVCNMBR_RS ORDER BY INVCNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 WHERE INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE ORDER BY INVCNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10101F_5] TO [DYNGRP]
GO