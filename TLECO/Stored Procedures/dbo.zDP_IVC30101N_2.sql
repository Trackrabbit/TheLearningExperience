SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC30101N_2] (@BS int, @CUSTNMBR char(15), @CSTPONBR char(21), @DOCDATE datetime, @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @CSTPONBR_RS char(21), @DOCDATE_RS datetime, @CUSTNMBR_RE char(15), @CSTPONBR_RE char(21), @DOCDATE_RE datetime) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, BACHNUMB, BCHSOURC, PCKSLPNO, CUSTNMBR, CUSTNAME, CSTPONBR, POSTDATE, GLPOSTDT, DOCDATE, QUOTEDAT, ORDRDATE, DISCDATE, DUEDATE, HOLDNT, SHIPMTHD, TAXEXMT1, TAXEXMT2, TAXSCHID, FRTSCHID, FRGTTXBL, FRTTXAMT, MSCSCHID, MISCTXBL, MSCTXAMT, MRKDNAMT, SLPRSNID, SALSTERR, TXRGNNUM, PYMTRMID, PRCLEVEL, LOCNCODE, CURNCYID, COMMNTID, DOCAMNT, SUBTOTAL, FRTAMNT, MISCAMNT, TAXAMNT, TXBTXAMT, TRDISAMT, ACCTAMNT, PYMTRCVD, CODAMNT, EXTDCOST, DISAVTKN, DISCRTND, DISTKNAM, DISAVAMT, DSCDLRAM, DSCPCTAM, PRBTADCD, PRSTADCD, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMDLRAM, NCOMAMNT, UPSZONE, LSTUSRED, LSTEDTDT, MODIFDT, CREATDDT, USER2ENT, NOTEINDX, TIMESPRT, NOCARTNS, USERDEF1, USERDEF2, VOIDSTTS, TRXSORCE, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, ECTRX, ShipToName, Tax_Date, APLYWITH, WITHHAMT, DEX_ROW_ID, CMMTTEXT FROM .IVC30101 WHERE ( CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DOCDATE > @DOCDATE OR CUSTNMBR = @CUSTNMBR AND CSTPONBR > @CSTPONBR OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CSTPONBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, BACHNUMB, BCHSOURC, PCKSLPNO, CUSTNMBR, CUSTNAME, CSTPONBR, POSTDATE, GLPOSTDT, DOCDATE, QUOTEDAT, ORDRDATE, DISCDATE, DUEDATE, HOLDNT, SHIPMTHD, TAXEXMT1, TAXEXMT2, TAXSCHID, FRTSCHID, FRGTTXBL, FRTTXAMT, MSCSCHID, MISCTXBL, MSCTXAMT, MRKDNAMT, SLPRSNID, SALSTERR, TXRGNNUM, PYMTRMID, PRCLEVEL, LOCNCODE, CURNCYID, COMMNTID, DOCAMNT, SUBTOTAL, FRTAMNT, MISCAMNT, TAXAMNT, TXBTXAMT, TRDISAMT, ACCTAMNT, PYMTRCVD, CODAMNT, EXTDCOST, DISAVTKN, DISCRTND, DISTKNAM, DISAVAMT, DSCDLRAM, DSCPCTAM, PRBTADCD, PRSTADCD, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMDLRAM, NCOMAMNT, UPSZONE, LSTUSRED, LSTEDTDT, MODIFDT, CREATDDT, USER2ENT, NOTEINDX, TIMESPRT, NOCARTNS, USERDEF1, USERDEF2, VOIDSTTS, TRXSORCE, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, ECTRX, ShipToName, Tax_Date, APLYWITH, WITHHAMT, DEX_ROW_ID, CMMTTEXT FROM .IVC30101 WHERE CUSTNMBR = @CUSTNMBR_RS AND CSTPONBR BETWEEN @CSTPONBR_RS AND @CSTPONBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DOCDATE > @DOCDATE OR CUSTNMBR = @CUSTNMBR AND CSTPONBR > @CSTPONBR OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CSTPONBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, BACHNUMB, BCHSOURC, PCKSLPNO, CUSTNMBR, CUSTNAME, CSTPONBR, POSTDATE, GLPOSTDT, DOCDATE, QUOTEDAT, ORDRDATE, DISCDATE, DUEDATE, HOLDNT, SHIPMTHD, TAXEXMT1, TAXEXMT2, TAXSCHID, FRTSCHID, FRGTTXBL, FRTTXAMT, MSCSCHID, MISCTXBL, MSCTXAMT, MRKDNAMT, SLPRSNID, SALSTERR, TXRGNNUM, PYMTRMID, PRCLEVEL, LOCNCODE, CURNCYID, COMMNTID, DOCAMNT, SUBTOTAL, FRTAMNT, MISCAMNT, TAXAMNT, TXBTXAMT, TRDISAMT, ACCTAMNT, PYMTRCVD, CODAMNT, EXTDCOST, DISAVTKN, DISCRTND, DISTKNAM, DISAVAMT, DSCDLRAM, DSCPCTAM, PRBTADCD, PRSTADCD, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMDLRAM, NCOMAMNT, UPSZONE, LSTUSRED, LSTEDTDT, MODIFDT, CREATDDT, USER2ENT, NOTEINDX, TIMESPRT, NOCARTNS, USERDEF1, USERDEF2, VOIDSTTS, TRXSORCE, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, ECTRX, ShipToName, Tax_Date, APLYWITH, WITHHAMT, DEX_ROW_ID, CMMTTEXT FROM .IVC30101 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CSTPONBR BETWEEN @CSTPONBR_RS AND @CSTPONBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DOCDATE > @DOCDATE OR CUSTNMBR = @CUSTNMBR AND CSTPONBR > @CSTPONBR OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CSTPONBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC30101N_2] TO [DYNGRP]
GO
