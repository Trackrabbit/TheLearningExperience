SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10200UN_7] (@BS int, @ReqShipDate datetime, @ACTLSHIP datetime, @SOPTYPE smallint, @ReqShipDate_RS datetime, @ACTLSHIP_RS datetime, @SOPTYPE_RS smallint, @ReqShipDate_RE datetime, @ACTLSHIP_RE datetime, @SOPTYPE_RE smallint) AS  set nocount on IF @ReqShipDate_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE ( ReqShipDate = @ReqShipDate AND ACTLSHIP = @ACTLSHIP AND SOPTYPE > @SOPTYPE OR ReqShipDate = @ReqShipDate AND ACTLSHIP > @ACTLSHIP OR ReqShipDate > @ReqShipDate ) ORDER BY ReqShipDate ASC, ACTLSHIP ASC, SOPTYPE ASC, DEX_ROW_ID ASC END ELSE IF @ReqShipDate_RS = @ReqShipDate_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE ReqShipDate = @ReqShipDate_RS AND ACTLSHIP BETWEEN @ACTLSHIP_RS AND @ACTLSHIP_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( ReqShipDate = @ReqShipDate AND ACTLSHIP = @ACTLSHIP AND SOPTYPE > @SOPTYPE OR ReqShipDate = @ReqShipDate AND ACTLSHIP > @ACTLSHIP OR ReqShipDate > @ReqShipDate ) ORDER BY ReqShipDate ASC, ACTLSHIP ASC, SOPTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE ReqShipDate BETWEEN @ReqShipDate_RS AND @ReqShipDate_RE AND ACTLSHIP BETWEEN @ACTLSHIP_RS AND @ACTLSHIP_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( ReqShipDate = @ReqShipDate AND ACTLSHIP = @ACTLSHIP AND SOPTYPE > @SOPTYPE OR ReqShipDate = @ReqShipDate AND ACTLSHIP > @ACTLSHIP OR ReqShipDate > @ReqShipDate ) ORDER BY ReqShipDate ASC, ACTLSHIP ASC, SOPTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10200UN_7] TO [DYNGRP]
GO
