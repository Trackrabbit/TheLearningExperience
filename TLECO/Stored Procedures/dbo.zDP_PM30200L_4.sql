SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM30200L_4] (@DOCDATE_RS datetime, @DOCDATE_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 ORDER BY DOCDATE DESC, DEX_ROW_ID DESC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE DOCDATE = @DOCDATE_RS ORDER BY DOCDATE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY DOCDATE DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30200L_4] TO [DYNGRP]
GO
