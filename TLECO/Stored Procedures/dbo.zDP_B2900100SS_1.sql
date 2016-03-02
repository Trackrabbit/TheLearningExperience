SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900100SS_1] (@SETUPKEY smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SETUPKEY, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Autopost_Schedule, BSSI_Schedule_Change_Pas, BSSI_Recog_Frequency, BSSI_Lease_Loan_Prefix, BSSI_LeaseLoan_NextNo, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, BSSI_EmailSubject, BSSI_PDF_Path, BSSI_EnableNegativeAmort, BSSI_LeaseLoanType, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnablePrefrdApply, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_EnableProrateExtraC, BSSI_RecalculateInterest, BSSI_InterestMethod, MINPYDLR, BSSI_EnaAutoCashRcptPost, DEX_ROW_ID, BSSI_EmailBody FROM .B2900100 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900100SS_1] TO [DYNGRP]
GO
