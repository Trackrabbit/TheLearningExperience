SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR30100N_5] (@BS int, @EMPLOYID char(15), @CHEKNMBR char(21), @DEX_ROW_ID int, @EMPLOYID_RS char(15), @CHEKNMBR_RS char(21), @EMPLOYID_RE char(15), @CHEKNMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE ( EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CHEKNMBR > @CHEKNMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE EMPLOYID = @EMPLOYID_RS AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE AND ( EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CHEKNMBR > @CHEKNMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE AND ( EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND CHEKNMBR > @CHEKNMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30100N_5] TO [DYNGRP]
GO
