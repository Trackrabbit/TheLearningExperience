SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM10000N_2] (@BS int, @VCHNUMWK char(17), @VCHNUMWK_RS char(17), @VCHNUMWK_RE char(17)) AS /* 14.00.0084.000 */ set nocount on IF @VCHNUMWK_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE ( VCHNUMWK > @VCHNUMWK ) ORDER BY VCHNUMWK ASC END ELSE IF @VCHNUMWK_RS = @VCHNUMWK_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE VCHNUMWK = @VCHNUMWK_RS AND ( VCHNUMWK > @VCHNUMWK ) ORDER BY VCHNUMWK ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, VCHNUMWK, VENDORID, DOCNUMBR, DOCTYPE, SOURCDOC, DOCAMNT, DOCDATE, PSTGDATE, VADDCDPR, VADCDTRO, PYMTRMID, TAXSCHID, DUEDATE, DSCDLRAM, DISCDATE, PRCHAMNT, CHRGAMNT, CASHAMNT, CAMCBKID, CDOCNMBR, CAMTDATE, CAMPMTNM, CHEKAMNT, CHAMCBID, CHEKDATE, CAMPYNBR, CRCRDAMT, CCAMPYNM, CHEKNMBR, CARDNAME, CCRCTNUM, CRCARDDT, CURNCYID, CHEKBKID, TRXDSCRN, UN1099AM, TRDISAMT, TAXAMNT, FRTAMNT, TEN99AMNT, MSCCHAMT, PORDNMBR, SHIPMTHD, DISAMTAV, DISTKNAM, APDSTKAM, WROFAMNT, CURTRXAM, TXENGCLD, PMWRKMSG, PMDSTMSG, GSTDSAMT, PGRAMSBJ, PPSAMDED, PPSTAXRT, PSTGSTUS, POSTED, APPLDAMT, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, NOTEINDX, BKTFRTAM, BKTMSCAM, BKTPURAM, PCHSCHID, FRTSCHID, MSCSCHID, PRINTED, PRCTDISC, RETNAGAM, ICTRX, ICDISTS, PMICMSGS, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, CORRNXST, VCHRNCOR, PMWRKMS2, BNKRCAMT, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, BackoutTradeDisc, CBVAT, TEN99TYPE, TEN99BOXNUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM10000 WHERE VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE AND ( VCHNUMWK > @VCHNUMWK ) ORDER BY VCHNUMWK ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10000N_2] TO [DYNGRP]
GO
