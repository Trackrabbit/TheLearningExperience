SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM30200UN_1] (@BS int, @VENDORID char(15), @VENDORID_RS char(15), @VENDORID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE VENDORID = @VENDORID_RS AND ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30200UN_1] TO [DYNGRP]
GO