SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM30200UN_10] (@BS int, @VENDORID char(15), @DOCTYPE smallint, @DOCNUMBR char(21), @DOCDATE datetime, @VENDORID_RS char(15), @DOCTYPE_RS smallint, @DOCNUMBR_RS char(21), @DOCDATE_RS datetime, @VENDORID_RE char(15), @DOCTYPE_RE smallint, @DOCNUMBR_RE char(21), @DOCDATE_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE ( VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND DOCDATE > @DOCDATE OR VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND DOCNUMBR > @DOCNUMBR OR VENDORID = @VENDORID AND DOCTYPE > @DOCTYPE OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCTYPE ASC, DOCNUMBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE VENDORID = @VENDORID_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND DOCDATE > @DOCDATE OR VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND DOCNUMBR > @DOCNUMBR OR VENDORID = @VENDORID AND DOCTYPE > @DOCTYPE OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCTYPE ASC, DOCNUMBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, APLYWITH, Electronic, ECTRX, DocPrinted, TaxInvReqd, VNDCHKNM, BackoutTradeDisc, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, PONUMBER, Workflow_Status, DEX_ROW_TS, DEX_ROW_ID FROM .PM30200 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND DOCDATE > @DOCDATE OR VENDORID = @VENDORID AND DOCTYPE = @DOCTYPE AND DOCNUMBR > @DOCNUMBR OR VENDORID = @VENDORID AND DOCTYPE > @DOCTYPE OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCTYPE ASC, DOCNUMBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30200UN_10] TO [DYNGRP]
GO
