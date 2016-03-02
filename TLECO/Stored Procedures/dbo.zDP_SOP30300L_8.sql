SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP30300L_8] (@SOPTYPE_RS smallint, @QTYTOINV_RS numeric(19,5), @SOPNUMBE_RS char(21), @ITEMNMBR_RS char(31), @QTYBSUOM_RS numeric(19,5), @DECPLQTY_RS smallint, @SOPTYPE_RE smallint, @QTYTOINV_RE numeric(19,5), @SOPNUMBE_RE char(21), @ITEMNMBR_RE char(31), @QTYBSUOM_RE numeric(19,5), @DECPLQTY_RE smallint) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, DOCNCORR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, ISLINEINTRA, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30300 ORDER BY SOPTYPE DESC, QTYTOINV DESC, SOPNUMBE DESC, ITEMNMBR DESC, QTYBSUOM DESC, DECPLQTY DESC, DEX_ROW_ID DESC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, DOCNCORR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, ISLINEINTRA, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30300 WHERE SOPTYPE = @SOPTYPE_RS AND QTYTOINV BETWEEN @QTYTOINV_RS AND @QTYTOINV_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND DECPLQTY BETWEEN @DECPLQTY_RS AND @DECPLQTY_RE ORDER BY SOPTYPE DESC, QTYTOINV DESC, SOPNUMBE DESC, ITEMNMBR DESC, QTYBSUOM DESC, DECPLQTY DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, DOCNCORR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, ISLINEINTRA, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30300 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND QTYTOINV BETWEEN @QTYTOINV_RS AND @QTYTOINV_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND DECPLQTY BETWEEN @DECPLQTY_RS AND @DECPLQTY_RE ORDER BY SOPTYPE DESC, QTYTOINV DESC, SOPNUMBE DESC, ITEMNMBR DESC, QTYBSUOM DESC, DECPLQTY DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30300L_8] TO [DYNGRP]
GO
