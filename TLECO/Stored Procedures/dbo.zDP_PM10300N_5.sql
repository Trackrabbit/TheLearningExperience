SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10300N_5] (@BS int, @BCHSOURC char(15), @BACHNUMB char(15), @ZIPCODE char(11), @PMNTNMBR char(21), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @ZIPCODE_RS char(11), @PMNTNMBR_RS char(21), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @ZIPCODE_RE char(11), @PMNTNMBR_RE char(21)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, PONUMBER, DEX_ROW_ID, AMTINWDS FROM .PM10300 WHERE ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND ZIPCODE = @ZIPCODE AND PMNTNMBR > @PMNTNMBR OR BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND ZIPCODE > @ZIPCODE OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, ZIPCODE ASC, PMNTNMBR ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, PONUMBER, DEX_ROW_ID, AMTINWDS FROM .PM10300 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ZIPCODE BETWEEN @ZIPCODE_RS AND @ZIPCODE_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND ZIPCODE = @ZIPCODE AND PMNTNMBR > @PMNTNMBR OR BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND ZIPCODE > @ZIPCODE OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, ZIPCODE ASC, PMNTNMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, PONUMBER, DEX_ROW_ID, AMTINWDS FROM .PM10300 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ZIPCODE BETWEEN @ZIPCODE_RS AND @ZIPCODE_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND ZIPCODE = @ZIPCODE AND PMNTNMBR > @PMNTNMBR OR BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND ZIPCODE > @ZIPCODE OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, ZIPCODE ASC, PMNTNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10300N_5] TO [DYNGRP]
GO
