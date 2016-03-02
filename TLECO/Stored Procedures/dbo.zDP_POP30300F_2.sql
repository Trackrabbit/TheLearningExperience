SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30300F_2] (@VENDORID_RS char(15), @VNDDOCNM_RS char(21), @POPRCTNM_RS char(17), @VENDORID_RE char(15), @VNDDOCNM_RE char(21), @POPRCTNM_RE char(17)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, VOIDSTTS, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, SIMPLIFD, WITHHAMT, ECTRX, TXRGNNUM, TAXSCHID, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, TaxInvReqd, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, Total_Landed_Cost_Amount, CBVAT, VADCDTRO, REVALJRNENTRY, REVALTRXSOURCE, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP30300 ORDER BY VENDORID ASC, VNDDOCNM ASC, POPRCTNM ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, VOIDSTTS, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, SIMPLIFD, WITHHAMT, ECTRX, TXRGNNUM, TAXSCHID, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, TaxInvReqd, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, Total_Landed_Cost_Amount, CBVAT, VADCDTRO, REVALJRNENTRY, REVALTRXSOURCE, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP30300 WHERE VENDORID = @VENDORID_RS AND VNDDOCNM BETWEEN @VNDDOCNM_RS AND @VNDDOCNM_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE ORDER BY VENDORID ASC, VNDDOCNM ASC, POPRCTNM ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, VOIDSTTS, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, SIMPLIFD, WITHHAMT, ECTRX, TXRGNNUM, TAXSCHID, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, TaxInvReqd, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, Total_Landed_Cost_Amount, CBVAT, VADCDTRO, REVALJRNENTRY, REVALTRXSOURCE, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP30300 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND VNDDOCNM BETWEEN @VNDDOCNM_RS AND @VNDDOCNM_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE ORDER BY VENDORID ASC, VNDDOCNM ASC, POPRCTNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30300F_2] TO [DYNGRP]
GO
