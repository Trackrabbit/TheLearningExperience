SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10100UN_3] (@BS int, @DOCDATE datetime, @DOCDATE_RS datetime, @DOCDATE_RE datetime) AS  set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, BACHNUMB, BCHSOURC, PCKSLPNO, CUSTNMBR, CUSTNAME, CSTPONBR, POSTDATE, GLPOSTDT, DOCDATE, QUOTEDAT, ORDRDATE, DISCDATE, DUEDATE, HOLDNT, SHIPMTHD, TAXEXMT1, TAXEXMT2, TAXSCHID, FRTSCHID, FRGTTXBL, FRTTXAMT, MSCSCHID, MISCTXBL, MSCTXAMT, SLPRSNID, SALSTERR, TXRGNNUM, PYMTRMID, PRCLEVEL, LOCNCODE, CURNCYID, COMMNTID, DOCAMNT, SUBTOTAL, FRTAMNT, MISCAMNT, TAXAMNT, TXBTXAMT, BCKTXAMT, BKTSLSAM, BKTFRTAM, BKTMSCAM, DISCFRGT, DISCMISC, TRDISPCT, TRDISAMT, ACCTAMNT, PYMTRCVD, CODAMNT, EXTDCOST, DISCRTND, DISAVTKN, DISTKNAM, DISAVAMT, DSCDLRAM, DSCPCTAM, MRKDNAMT, PRBTADCD, PRSTADCD, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMDLRAM, NCOMAMNT, UPSZONE, LSTUSRED, LSTEDTDT, MODIFDT, CREATDDT, USER2ENT, NOTEINDX, TIMESPRT, NOCARTNS, USERDEF1, USERDEF2, VOIDSTTS, TRXSORCE, PSTGSTUS, IVCHDER1, IVCHDER2, IVCLINEERR, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, ECTRX, ShipToName, Tax_Date, APLYWITH, WITHHAMT, BackoutTradeDisc, DEX_ROW_ID, CMMTTEXT FROM .IVC10100 WHERE ( DOCDATE > @DOCDATE ) ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, BACHNUMB, BCHSOURC, PCKSLPNO, CUSTNMBR, CUSTNAME, CSTPONBR, POSTDATE, GLPOSTDT, DOCDATE, QUOTEDAT, ORDRDATE, DISCDATE, DUEDATE, HOLDNT, SHIPMTHD, TAXEXMT1, TAXEXMT2, TAXSCHID, FRTSCHID, FRGTTXBL, FRTTXAMT, MSCSCHID, MISCTXBL, MSCTXAMT, SLPRSNID, SALSTERR, TXRGNNUM, PYMTRMID, PRCLEVEL, LOCNCODE, CURNCYID, COMMNTID, DOCAMNT, SUBTOTAL, FRTAMNT, MISCAMNT, TAXAMNT, TXBTXAMT, BCKTXAMT, BKTSLSAM, BKTFRTAM, BKTMSCAM, DISCFRGT, DISCMISC, TRDISPCT, TRDISAMT, ACCTAMNT, PYMTRCVD, CODAMNT, EXTDCOST, DISCRTND, DISAVTKN, DISTKNAM, DISAVAMT, DSCDLRAM, DSCPCTAM, MRKDNAMT, PRBTADCD, PRSTADCD, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMDLRAM, NCOMAMNT, UPSZONE, LSTUSRED, LSTEDTDT, MODIFDT, CREATDDT, USER2ENT, NOTEINDX, TIMESPRT, NOCARTNS, USERDEF1, USERDEF2, VOIDSTTS, TRXSORCE, PSTGSTUS, IVCHDER1, IVCHDER2, IVCLINEERR, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, ECTRX, ShipToName, Tax_Date, APLYWITH, WITHHAMT, BackoutTradeDisc, DEX_ROW_ID, CMMTTEXT FROM .IVC10100 WHERE DOCDATE = @DOCDATE_RS AND ( DOCDATE > @DOCDATE ) ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, BACHNUMB, BCHSOURC, PCKSLPNO, CUSTNMBR, CUSTNAME, CSTPONBR, POSTDATE, GLPOSTDT, DOCDATE, QUOTEDAT, ORDRDATE, DISCDATE, DUEDATE, HOLDNT, SHIPMTHD, TAXEXMT1, TAXEXMT2, TAXSCHID, FRTSCHID, FRGTTXBL, FRTTXAMT, MSCSCHID, MISCTXBL, MSCTXAMT, SLPRSNID, SALSTERR, TXRGNNUM, PYMTRMID, PRCLEVEL, LOCNCODE, CURNCYID, COMMNTID, DOCAMNT, SUBTOTAL, FRTAMNT, MISCAMNT, TAXAMNT, TXBTXAMT, BCKTXAMT, BKTSLSAM, BKTFRTAM, BKTMSCAM, DISCFRGT, DISCMISC, TRDISPCT, TRDISAMT, ACCTAMNT, PYMTRCVD, CODAMNT, EXTDCOST, DISCRTND, DISAVTKN, DISTKNAM, DISAVAMT, DSCDLRAM, DSCPCTAM, MRKDNAMT, PRBTADCD, PRSTADCD, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMDLRAM, NCOMAMNT, UPSZONE, LSTUSRED, LSTEDTDT, MODIFDT, CREATDDT, USER2ENT, NOTEINDX, TIMESPRT, NOCARTNS, USERDEF1, USERDEF2, VOIDSTTS, TRXSORCE, PSTGSTUS, IVCHDER1, IVCHDER2, IVCLINEERR, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, ECTRX, ShipToName, Tax_Date, APLYWITH, WITHHAMT, BackoutTradeDisc, DEX_ROW_ID, CMMTTEXT FROM .IVC10100 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( DOCDATE > @DOCDATE ) ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10100UN_3] TO [DYNGRP]
GO
