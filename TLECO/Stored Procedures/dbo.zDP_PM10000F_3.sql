SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM10000F_3] (@VENDORID_RS char(15), @DOCNUMBR_RS char(21), @VENDORID_RE char(15), @DOCNUMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 ORDER BY VENDORID ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE VENDORID = @VENDORID_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY VENDORID ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY VENDORID ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10000F_3] TO [DYNGRP]
GO
