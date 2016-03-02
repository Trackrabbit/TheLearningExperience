SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR30100L_1] (@AUCTRLCD_RS char(13), @CHEKNMBR_RS char(21), @AUCTRLCD_RE char(13), @CHEKNMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @AUCTRLCD_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 ORDER BY AUCTRLCD DESC, CHEKNMBR DESC, DEX_ROW_ID DESC END ELSE IF @AUCTRLCD_RS = @AUCTRLCD_RE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE AUCTRLCD = @AUCTRLCD_RS AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE ORDER BY AUCTRLCD DESC, CHEKNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE AUCTRLCD BETWEEN @AUCTRLCD_RS AND @AUCTRLCD_RE AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE ORDER BY AUCTRLCD DESC, CHEKNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30100L_1] TO [DYNGRP]
GO
