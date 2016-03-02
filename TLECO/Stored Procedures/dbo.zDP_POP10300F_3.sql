SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10300F_3] (@receiptdate_RS datetime, @VENDORID_RS char(15), @POPRCTNM_RS char(17), @receiptdate_RE datetime, @VENDORID_RE char(15), @POPRCTNM_RE char(17)) AS  set nocount on IF @receiptdate_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, WITHHAMT, SIMPLIFD, BNKRCAMT, ECTRX, TXRGNNUM, TAXSCHID, TXENGCLD, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvReqd, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, DocPrinted, Total_Landed_Cost_Amount, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP10300 ORDER BY receiptdate ASC, VENDORID ASC, POPRCTNM ASC END ELSE IF @receiptdate_RS = @receiptdate_RE BEGIN SELECT TOP 25  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, WITHHAMT, SIMPLIFD, BNKRCAMT, ECTRX, TXRGNNUM, TAXSCHID, TXENGCLD, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvReqd, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, DocPrinted, Total_Landed_Cost_Amount, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP10300 WHERE receiptdate = @receiptdate_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE ORDER BY receiptdate ASC, VENDORID ASC, POPRCTNM ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, WITHHAMT, SIMPLIFD, BNKRCAMT, ECTRX, TXRGNNUM, TAXSCHID, TXENGCLD, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvReqd, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, DocPrinted, Total_Landed_Cost_Amount, BackoutTradeDiscTax, OrigBackoutTradeDiscTax, CBVAT, VADCDTRO, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP10300 WHERE receiptdate BETWEEN @receiptdate_RS AND @receiptdate_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE ORDER BY receiptdate ASC, VENDORID ASC, POPRCTNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10300F_3] TO [DYNGRP]
GO
