SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10200N_6] (@BS int, @SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint, @LNITMSEQ_RE int, @CMPNTSEQ_RE int) AS  set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE ( SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ > @LNITMSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND ( SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ > @LNITMSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYONPO, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, QTYTOSHP, XFRSHDOC, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, BackoutTradeDisc, OrigBackoutTradeDisc, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, BULKPICKPRNT, INDPICKPRNT, ISLINEINTRA, SOFULFILLMENTBIN, MULTIPLEBINS, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP10200 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND ( SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ > @LNITMSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10200N_6] TO [DYNGRP]
GO
