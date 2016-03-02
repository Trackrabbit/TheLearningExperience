SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM10000L_5] (@BACHNUMB_RS char(15), @VCHRNMBR_RS char(21), @BACHNUMB_RE char(15), @VCHRNMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 ORDER BY BACHNUMB DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE BACHNUMB = @BACHNUMB_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY BACHNUMB DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY BACHNUMB DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10000L_5] TO [DYNGRP]
GO
