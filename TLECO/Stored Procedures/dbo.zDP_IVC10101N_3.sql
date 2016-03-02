SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10101N_3] (@BS int, @ITEMNMBR char(31), @LOCNCODE char(11), @DEX_ROW_ID int, @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 WHERE ( ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, LOCNCODE ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 WHERE ITEMNMBR = @ITEMNMBR_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, LOCNCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, LOCNCODE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10101N_3] TO [DYNGRP]
GO