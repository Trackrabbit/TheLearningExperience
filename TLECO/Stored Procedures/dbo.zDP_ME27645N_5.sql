SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27645N_5] (@BS int, @BACHNUMB char(15), @BCHSOURC char(15), @CHEKBKID char(15), @DOCNUMBR char(21), @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @CHEKBKID_RS char(15), @DOCNUMBR_RS char(21), @BACHNUMB_RE char(15), @BCHSOURC_RE char(15), @CHEKBKID_RE char(15), @DOCNUMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, ME_Threshhold, SEQNUMBR, SORTBY, DEX_ROW_ID, AMTINWDS FROM .ME27645 WHERE ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CHEKBKID = @CHEKBKID AND DOCNUMBR > @DOCNUMBR OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CHEKBKID > @CHEKBKID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, CHEKBKID ASC, DOCNUMBR ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, ME_Threshhold, SEQNUMBR, SORTBY, DEX_ROW_ID, AMTINWDS FROM .ME27645 WHERE BACHNUMB = @BACHNUMB_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CHEKBKID = @CHEKBKID AND DOCNUMBR > @DOCNUMBR OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CHEKBKID > @CHEKBKID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, CHEKBKID ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, ME_Threshhold, SEQNUMBR, SORTBY, DEX_ROW_ID, AMTINWDS FROM .ME27645 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CHEKBKID = @CHEKBKID AND DOCNUMBR > @DOCNUMBR OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND CHEKBKID > @CHEKBKID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, CHEKBKID ASC, DOCNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27645N_5] TO [DYNGRP]
GO
