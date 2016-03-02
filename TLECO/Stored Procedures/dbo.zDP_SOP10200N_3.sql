SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10200N_3] (@BS int, @LOCNCODE char(11), @DEX_ROW_ID int, @LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE ( LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE LOCNCODE = @LOCNCODE_RS AND ( LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10200N_3] TO [DYNGRP]
GO
