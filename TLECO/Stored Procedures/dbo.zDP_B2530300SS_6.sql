SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530300SS_6] (@BCHSOURC char(15), @BACHNUMB char(15), @STATE char(29), @CITY char(35), @PMNTNMBR char(21)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, DEX_ROW_ID, AMTINWDS FROM .B2530300 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND STATE = @STATE AND CITY = @CITY AND PMNTNMBR = @PMNTNMBR ORDER BY BCHSOURC ASC, BACHNUMB ASC, STATE ASC, CITY ASC, PMNTNMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530300SS_6] TO [DYNGRP]
GO
