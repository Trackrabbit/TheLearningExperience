SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR30100UN_9] (@BS int, @EMPLOYID char(15), @CHEKDATE datetime, @EMPLOYID_RS char(15), @CHEKDATE_RS datetime, @EMPLOYID_RE char(15), @CHEKDATE_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE ( EMPLOYID = @EMPLOYID AND CHEKDATE < @CHEKDATE OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKDATE DESC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE EMPLOYID = @EMPLOYID_RS AND CHEKDATE BETWEEN @CHEKDATE_RE AND @CHEKDATE_RS AND ( EMPLOYID = @EMPLOYID AND CHEKDATE < @CHEKDATE OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKDATE DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND CHEKDATE BETWEEN @CHEKDATE_RE AND @CHEKDATE_RS AND ( EMPLOYID = @EMPLOYID AND CHEKDATE < @CHEKDATE OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKDATE DESC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30100UN_9] TO [DYNGRP]
GO
