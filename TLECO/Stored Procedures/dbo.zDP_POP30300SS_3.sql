SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30300SS_3] (@receiptdate datetime, @VENDORID char(15), @POPRCTNM char(17)) AS  set nocount on SELECT TOP 1  POPRCTNM, POPTYPE, VNDDOCNM, receiptdate, GLPOSTDT, ACTLSHIP, BCHSOURC, BACHNUMB, VENDORID, VENDNAME, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MISCAMNT, TAXAMNT, TEN99AMNT, PYMTRMID, DSCPCTAM, DSCDLRAM, DISAVAMT, DISCDATE, DUEDATE, REFRENCE, VOIDSTTS, RCPTNOTE_1, RCPTNOTE_2, RCPTNOTE_3, RCPTNOTE_4, RCPTNOTE_5, RCPTNOTE_6, RCPTNOTE_7, RCPTNOTE_8, POPHDR1, POPHDR2, POPLNERR, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, TRXSORCE, VCHRNMBR, Tax_Date, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, ORSUBTOT, ORTDISAM, ORFRTAMT, ORMISCAMT, ORTAXAMT, OR1099AM, ORDDLRAT, ORDAVAMT, SIMPLIFD, WITHHAMT, ECTRX, TXRGNNUM, TAXSCHID, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, TaxInvReqd, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, TaxInvRecvd, APLYWITH, PPSTAXRT, SHIPMTHD, Total_Landed_Cost_Amount, CBVAT, VADCDTRO, REVALJRNENTRY, REVALTRXSOURCE, TEN99TYPE, TEN99BOXNUMBER, REPLACEGOODS, INVOICEEXPECTED, PrepaymentAmount, OriginatingPrepaymentAmt, POP_HDR_Errors_4, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, DEX_ROW_ID FROM .POP30300 WHERE receiptdate = @receiptdate AND VENDORID = @VENDORID AND POPRCTNM = @POPRCTNM ORDER BY receiptdate ASC, VENDORID ASC, POPRCTNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30300SS_3] TO [DYNGRP]
GO
