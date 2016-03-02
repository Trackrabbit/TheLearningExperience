SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530300N_2] (@BS int, @BCHSOURC char(15), @PMNTNMBR char(21), @BCHSOURC_RS char(15), @PMNTNMBR_RS char(21), @BCHSOURC_RE char(15), @PMNTNMBR_RE char(21)) AS /* 12.00.0311.000 */ set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, DEX_ROW_ID, AMTINWDS FROM .B2530300 WHERE ( BCHSOURC = @BCHSOURC AND PMNTNMBR > @PMNTNMBR OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, PMNTNMBR ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, DEX_ROW_ID, AMTINWDS FROM .B2530300 WHERE BCHSOURC = @BCHSOURC_RS AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND ( BCHSOURC = @BCHSOURC AND PMNTNMBR > @PMNTNMBR OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, PMNTNMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, DEX_ROW_ID, AMTINWDS FROM .B2530300 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND ( BCHSOURC = @BCHSOURC AND PMNTNMBR > @PMNTNMBR OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, PMNTNMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530300N_2] TO [DYNGRP]
GO
