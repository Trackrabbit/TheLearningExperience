SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10101SS_3] (@ITEMNMBR char(31), @LOCNCODE char(11)) AS  set nocount on SELECT TOP 1  DOCTYPE, INVCNMBR, LNITMSEQ, CMPNTSEQ, ITEMNMBR, DECPLCUR, DECPLQTY, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, NONINVEN, QUANTITY, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, EXTQTYSEL, UOFM, QTYBSUOM, UNITCOST, EXTDCOST, DISCSALE, TRDISAMT, ATYALLOC, LOCNCODE, MRKDNTYP, MRKDNAMT, MRKDNPCT, PRCLEVEL, XTNDPRCE, UNITPRCE, TAXAMNT, BKTSLSAM, TXBTXAMT, BSIVCTTL, SLPRSNID, SALSTERR, DSCRIPTN, ITEMDESC, EXPTSHIP, ACTLSHIP, ReqShipDate, COMDLRAM, CMPSERNM, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, TRXSORCE, IVCLINEERR, BackoutTradeDisc, PRSTADCD, SHIPMTHD, ISLINEINTRA, DEX_ROW_ID FROM .IVC10101 WHERE ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE ORDER BY ITEMNMBR ASC, LOCNCODE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10101SS_3] TO [DYNGRP]
GO
