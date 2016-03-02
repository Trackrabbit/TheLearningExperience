SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27645SS_2] (@BACHNUMB char(15), @BCHSOURC char(15), @ME_Threshhold smallint, @DOCNUMBR char(21)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, PMNTNMBR, CHEKBKID, DOCDATE, DOCNUMBR, APPLDAMT, CURTRXAM, CHEKTOTL, VENDORID, VENDNAME, COMMENT1, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, VNDCHKNM, SOURCDOC, DISTKNAM, DISAMTAV, WROFAMNT, CURNCYID, VOIDED, REPRNTED, GSTDSAMT, PGRAMSBJ, PPSTAXRT, PPSAMDED, LDOCRMTC, SDORMBY, KEYFIELD, AMWDSNBR, NOTEINDX, VCHRNMBR, CNTRLTYP, DOCTYPE, MODIFDT, MDFUSRID, PSTGSTUS, POSTEDDT, PTDUSRID, PMWRKMSG, PMWRKMS2, PMDSTMSG, CHKCOMNT, PSTGDATE, STRGA255, STRGB255, SEPRMTNC, STBOVRFL, CTYSTZIP, TotDocAmt, TotAmtPaid, TotCrdAmt, TotalPaidTot, TotNegTot, TotCrdDocAmt, TotTotDocAmt, TotDiscTknAmt, TotWOAmt, TotPPSAmtDed, TotGSTDiscAmt, TotDiscTknTot, TotWOTot, Outstanding_Amount, Net_Paid_Amount, Electronic, ME_Threshhold, SEQNUMBR, SORTBY, DEX_ROW_ID, AMTINWDS FROM .ME27645 WHERE BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND ME_Threshhold = @ME_Threshhold AND DOCNUMBR = @DOCNUMBR ORDER BY BACHNUMB ASC, BCHSOURC ASC, ME_Threshhold ASC, DOCNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27645SS_2] TO [DYNGRP]
GO
