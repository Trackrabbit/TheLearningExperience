SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR30100N_8] (@BS int, @EMPLOYID char(15), @YEAR1 smallint, @CHEKDATE datetime, @DEX_ROW_ID int, @EMPLOYID_RS char(15), @YEAR1_RS smallint, @CHEKDATE_RS datetime, @EMPLOYID_RE char(15), @YEAR1_RE smallint, @CHEKDATE_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE ( EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND CHEKDATE = @CHEKDATE AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND CHEKDATE > @CHEKDATE OR EMPLOYID = @EMPLOYID AND YEAR1 > @YEAR1 OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, YEAR1 ASC, CHEKDATE ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE EMPLOYID = @EMPLOYID_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND CHEKDATE BETWEEN @CHEKDATE_RS AND @CHEKDATE_RE AND ( EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND CHEKDATE = @CHEKDATE AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND CHEKDATE > @CHEKDATE OR EMPLOYID = @EMPLOYID AND YEAR1 > @YEAR1 OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, YEAR1 ASC, CHEKDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, CHEKNMBR, PYADNMBR, VOIDED, CHEKDATE, POSTEDDT, EMPLOYID, EMPLNAME, GRWGPRN, FDWDGPRN, FDTXTIPS, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, ADEICPMT, Reported_Tips, Charged_Tips, ALOCTIPS, TTLDDTNS, TTLBNFTS, NTWPYRN, CHEKBKID, DEPRTMNT, SOCSCNUM, VACTMACC, VACTMLBL, VACAVLBL, SKTMACCR, SKTMLBTY, SIKTIMAV, TOTLTAXS, Voided_by_Void_Checks, FDWGPYRN, Federal_TipsPay_Run, FICASSWP, FICASS_TipsPay_Run, FICAMWGP, FICAMed_TipsPay_Run, Reported_Receipts, Charged_Receipts, YEAR1, ISCHECK, RSNCHKVD, COMPPYRN, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR30100 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND CHEKDATE BETWEEN @CHEKDATE_RS AND @CHEKDATE_RE AND ( EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND CHEKDATE = @CHEKDATE AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND YEAR1 = @YEAR1 AND CHEKDATE > @CHEKDATE OR EMPLOYID = @EMPLOYID AND YEAR1 > @YEAR1 OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, YEAR1 ASC, CHEKDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30100N_8] TO [DYNGRP]
GO
