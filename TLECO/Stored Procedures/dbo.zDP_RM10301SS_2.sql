SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10301SS_2] (@CUSTNMBR char(15), @RMDNUMWK char(17)) AS  set nocount on SELECT TOP 1  DOCTYPE, RMDTYPAL, RMDNUMWK, DOCNUMBR, DOCPRFIX, DOCDESCR, DOCDATE, BACHNUMB, BCHSOURC, NOTEINDX, CUSTNMBR, CUSTNAME, ADRSCODE, SLPRSNID, SALSTERR, COMAPPTO, COMDLRAM, NCOMAMNT, SHIPMTHD, CSTPONBR, TAXSCHID, SLSCHDID, FRTSCHID, MSCSCHID, COSTAMNT, SLSAMNT, TRDISAMT, TRDDISCT, FRTAMNT, MISCAMNT, TAXAMNT, BKTSLSAM, BKTFRTAM, BKTMSCAM, TXENGCLD, DOCAMNT, APPLDAMT, CASHAMNT, CBKIDCSH, CASHDATE, DCNUMCSH, CHEKAMNT, CBKIDCHK, CBKIDCRD, CHEKNMBR, CHEKDATE, DCNUMCHK, CRCRDAMT, CRCRDNAM, RCTNCCRD, CRCARDDT, DCNUMCRD, DISCRTND, DISTKNAM, DISAVTKN, WROFAMNT, PPSAMDED, GSTDSAMT, ACCTAMNT, PYMTRMID, DISAVAMT, DISCDATE, DUEDATE, DSCDLRAM, DSCPCTAM, CURNCYID, POSTED, LSTEDTDT, LSTUSRED, RMTREMSG, RMDPEMSG, GLPOSTDT, POSTEDDT, PTDUSRID, Tax_Date, APLYWITH, SALEDATE, CORRCTN, SIMPLIFD, CORRNXST, DOCNCORR, RMTREMSG2, DocPrinted, DISGRPER, DUEGRPER, Electronic, ECTRX, PSTGSTUS, BackoutTradeDisc, DIRECTDEBIT, EFTFLAG, DEX_ROW_TS, DEX_ROW_ID FROM .RM10301 WHERE CUSTNMBR = @CUSTNMBR AND RMDNUMWK = @RMDNUMWK ORDER BY CUSTNMBR ASC, RMDNUMWK ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10301SS_2] TO [DYNGRP]
GO
