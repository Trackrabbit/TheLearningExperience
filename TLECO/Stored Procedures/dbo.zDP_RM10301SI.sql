SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10301SI] (@DOCTYPE smallint, @RMDTYPAL smallint, @RMDNUMWK char(17), @DOCNUMBR char(21), @DOCPRFIX char(3), @DOCDESCR char(31), @DOCDATE datetime, @BACHNUMB char(15), @BCHSOURC char(15), @NOTEINDX numeric(19,5), @CUSTNMBR char(15), @CUSTNAME char(65), @ADRSCODE char(15), @SLPRSNID char(15), @SALSTERR char(15), @COMAPPTO smallint, @COMDLRAM numeric(19,5), @NCOMAMNT numeric(19,5), @SHIPMTHD char(15), @CSTPONBR char(21), @TAXSCHID char(15), @SLSCHDID char(15), @FRTSCHID char(15), @MSCSCHID char(15), @COSTAMNT numeric(19,5), @SLSAMNT numeric(19,5), @TRDISAMT numeric(19,5), @TRDDISCT smallint, @FRTAMNT numeric(19,5), @MISCAMNT numeric(19,5), @TAXAMNT numeric(19,5), @BKTSLSAM numeric(19,5), @BKTFRTAM numeric(19,5), @BKTMSCAM numeric(19,5), @TXENGCLD tinyint, @DOCAMNT numeric(19,5), @APPLDAMT numeric(19,5), @CASHAMNT numeric(19,5), @CBKIDCSH char(15), @CASHDATE datetime, @DCNUMCSH char(21), @CHEKAMNT numeric(19,5), @CBKIDCHK char(15), @CBKIDCRD char(15), @CHEKNMBR char(21), @CHEKDATE datetime, @DCNUMCHK char(21), @CRCRDAMT numeric(19,5), @CRCRDNAM char(15), @RCTNCCRD char(21), @CRCARDDT datetime, @DCNUMCRD char(21), @DISCRTND numeric(19,5), @DISTKNAM numeric(19,5), @DISAVTKN numeric(19,5), @WROFAMNT numeric(19,5), @PPSAMDED numeric(19,5), @GSTDSAMT numeric(19,5), @ACCTAMNT numeric(19,5), @PYMTRMID char(21), @DISAVAMT numeric(19,5), @DISCDATE datetime, @DUEDATE datetime, @DSCDLRAM numeric(19,5), @DSCPCTAM smallint, @CURNCYID char(15), @POSTED tinyint, @LSTEDTDT datetime, @LSTUSRED char(15), @RMTREMSG binary(4), @RMDPEMSG binary(4), @GLPOSTDT datetime, @POSTEDDT datetime, @PTDUSRID char(15), @Tax_Date datetime, @APLYWITH tinyint, @SALEDATE datetime, @CORRCTN tinyint, @SIMPLIFD tinyint, @CORRNXST tinyint, @DOCNCORR char(21), @RMTREMSG2 binary(4), @DocPrinted tinyint, @DISGRPER smallint, @DUEGRPER smallint, @Electronic tinyint, @ECTRX tinyint, @PSTGSTUS smallint, @BackoutTradeDisc numeric(19,5), @DIRECTDEBIT tinyint, @EFTFLAG tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM10301 (DOCTYPE, RMDTYPAL, RMDNUMWK, DOCNUMBR, DOCPRFIX, DOCDESCR, DOCDATE, BACHNUMB, BCHSOURC, NOTEINDX, CUSTNMBR, CUSTNAME, ADRSCODE, SLPRSNID, SALSTERR, COMAPPTO, COMDLRAM, NCOMAMNT, SHIPMTHD, CSTPONBR, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, COSTAMNT, SLSAMNT, TRDISAMT, TRDDISCT, FRTAMNT, MISCAMNT, TAXAMNT, BKTSLSAM, BKTFRTAM, BKTMSCAM, TXENGCLD, DOCAMNT, APPLDAMT, CASHAMNT, CBKIDCSH, CASHDATE, DCNUMCSH, CHEKAMNT, CBKIDCHK, CBKIDCRD, CHEKNMBR, CHEKDATE, DCNUMCHK, CRCRDAMT, CRCRDNAM, RCTNCCRD, CRCARDDT, DCNUMCRD, DISCRTND, DISTKNAM, DISAVTKN, WROFAMNT, PPSAMDED, GSTDSAMT, ACCTAMNT, PYMTRMID, DISAVAMT, DISCDATE, DUEDATE, DSCDLRAM, DSCPCTAM, CURNCYID, POSTED, LSTEDTDT, LSTUSRED, RMTREMSG, RMDPEMSG, GLPOSTDT, POSTEDDT, PTDUSRID, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, CORRNXST, DOCNCORR, RMTREMSG2, DocPrinted, DISGRPER, DUEGRPER, Electronic, ECTRX, PSTGSTUS, BackoutTradeDisc, DIRECTDEBIT, EFTFLAG) VALUES ( @DOCTYPE, @RMDTYPAL, @RMDNUMWK, @DOCNUMBR, @DOCPRFIX, @DOCDESCR, @DOCDATE, @BACHNUMB, @BCHSOURC, @NOTEINDX, @CUSTNMBR, @CUSTNAME, @ADRSCODE, @SLPRSNID, @SALSTERR, @COMAPPTO, @COMDLRAM, @NCOMAMNT, @SHIPMTHD, @CSTPONBR, @TAXSCHID, @SLSCHDID, @FRTSCHID, @MSCSCHID, @COSTAMNT, @SLSAMNT, @TRDISAMT, @TRDDISCT, @FRTAMNT, @MISCAMNT, @TAXAMNT, @BKTSLSAM, @BKTFRTAM, @BKTMSCAM, @TXENGCLD, @DOCAMNT, @APPLDAMT, @CASHAMNT, @CBKIDCSH, @CASHDATE, @DCNUMCSH, @CHEKAMNT, @CBKIDCHK, @CBKIDCRD, @CHEKNMBR, @CHEKDATE, @DCNUMCHK, @CRCRDAMT, @CRCRDNAM, @RCTNCCRD, @CRCARDDT, @DCNUMCRD, @DISCRTND, @DISTKNAM, @DISAVTKN, @WROFAMNT, @PPSAMDED, @GSTDSAMT, @ACCTAMNT, @PYMTRMID, @DISAVAMT, @DISCDATE, @DUEDATE, @DSCDLRAM, @DSCPCTAM, @CURNCYID, @POSTED, @LSTEDTDT, @LSTUSRED, @RMTREMSG, @RMDPEMSG, @GLPOSTDT, @POSTEDDT, @PTDUSRID, @Tax_Date, @APLYWITH, @SALEDATE, @CORRCTN, @SIMPLIFD, @CORRNXST, @DOCNCORR, @RMTREMSG2, @DocPrinted, @DISGRPER, @DUEGRPER, @Electronic, @ECTRX, @PSTGSTUS, @BackoutTradeDisc, @DIRECTDEBIT, @EFTFLAG) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10301SI] TO [DYNGRP]
GO