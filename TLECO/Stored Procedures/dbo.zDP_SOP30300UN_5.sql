SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP30300UN_5] (@BS int, @DOCNCORR char(21), @ORGSEQNM int, @SOPTYPE smallint, @SOPNUMBE char(21), @DOCNCORR_RS char(21), @ORGSEQNM_RS int, @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @DOCNCORR_RE char(21), @ORGSEQNM_RE int, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21)) AS  set nocount on IF @DOCNCORR_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, DOCNCORR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, ISLINEINTRA, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30300 WHERE ( DOCNCORR = @DOCNCORR AND ORGSEQNM = @ORGSEQNM AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR DOCNCORR = @DOCNCORR AND ORGSEQNM = @ORGSEQNM AND SOPTYPE > @SOPTYPE OR DOCNCORR = @DOCNCORR AND ORGSEQNM > @ORGSEQNM OR DOCNCORR > @DOCNCORR ) ORDER BY DOCNCORR ASC, ORGSEQNM ASC, SOPTYPE ASC, SOPNUMBE ASC, DEX_ROW_ID ASC END ELSE IF @DOCNCORR_RS = @DOCNCORR_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, DOCNCORR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, ISLINEINTRA, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30300 WHERE DOCNCORR = @DOCNCORR_RS AND ORGSEQNM BETWEEN @ORGSEQNM_RS AND @ORGSEQNM_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( DOCNCORR = @DOCNCORR AND ORGSEQNM = @ORGSEQNM AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR DOCNCORR = @DOCNCORR AND ORGSEQNM = @ORGSEQNM AND SOPTYPE > @SOPTYPE OR DOCNCORR = @DOCNCORR AND ORGSEQNM > @ORGSEQNM OR DOCNCORR > @DOCNCORR ) ORDER BY DOCNCORR ASC, ORGSEQNM ASC, SOPTYPE ASC, SOPNUMBE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, ITEMNMBR, ITEMDESC, NONINVEN, DROPSHIP, UOFM, LOCNCODE, UNITCOST, ORUNTCST, UNITPRCE, ORUNTPRC, XTNDPRCE, OXTNDPRC, REMPRICE, OREPRICE, EXTDCOST, OREXTCST, MRKDNAMT, ORMRKDAM, MRKDNPCT, MRKDNTYP, INVINDX, CSLSINDX, SLSINDX, MKDNINDX, RTNSINDX, INUSINDX, INSRINDX, DMGDINDX, ITMTSHID, IVITMTXB, BKTSLSAM, ORBKTSLS, TAXAMNT, ORTAXAMT, TXBTXAMT, OTAXTAMT, BSIVCTTL, TRDISAMT, ORTDISAM, DISCSALE, ORDAVSLS, QUANTITY, ATYALLOC, QTYINSVC, QTYINUSE, QTYDMGED, QTYRTRND, QTYONHND, QTYCANCE, QTYCANOT, QTYORDER, QTYPRBAC, QTYPRBOO, QTYPRINV, QTYPRORD, QTYPRVRECVD, QTYRECVD, QTYREMAI, QTYREMBO, QTYTBAOR, QTYTOINV, QTYTORDR, QTYFULFI, QTYSLCTD, QTYBSUOM, EXTQTYAL, EXTQTYSEL, ReqShipDate, FUFILDAT, ACTLSHIP, SHIPMTHD, SALSTERR, SLPRSNID, PRCLEVEL, COMMNTID, BRKFLD1, BRKFLD2, BRKFLD3, CURRNIDX, TRXSORCE, SOPLNERR, DOCNCORR, ORGSEQNM, ITEMCODE, PURCHSTAT, DECPLQTY, DECPLCUR, ODECPLCU, EXCEPTIONALDEMAND, TAXSCHID, TXSCHSRC, PRSTADCD, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, Flags, CONTNBR, CONTLNSEQNBR, CONTSTARTDTE, CONTENDDTE, CONTITEMNBR, CONTSERIALNBR, ISLINEINTRA, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30300 WHERE DOCNCORR BETWEEN @DOCNCORR_RS AND @DOCNCORR_RE AND ORGSEQNM BETWEEN @ORGSEQNM_RS AND @ORGSEQNM_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( DOCNCORR = @DOCNCORR AND ORGSEQNM = @ORGSEQNM AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR DOCNCORR = @DOCNCORR AND ORGSEQNM = @ORGSEQNM AND SOPTYPE > @SOPTYPE OR DOCNCORR = @DOCNCORR AND ORGSEQNM > @ORGSEQNM OR DOCNCORR > @DOCNCORR ) ORDER BY DOCNCORR ASC, ORGSEQNM ASC, SOPTYPE ASC, SOPNUMBE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30300UN_5] TO [DYNGRP]
GO
