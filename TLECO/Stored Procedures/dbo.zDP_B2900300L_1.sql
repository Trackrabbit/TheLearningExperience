SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900300L_1] (@CLASSID_RS char(15), @CLASSID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @CLASSID_RS IS NULL BEGIN SELECT TOP 25  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 ORDER BY CLASSID DESC END ELSE IF @CLASSID_RS = @CLASSID_RE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 WHERE CLASSID = @CLASSID_RS ORDER BY CLASSID DESC END ELSE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 WHERE CLASSID BETWEEN @CLASSID_RS AND @CLASSID_RE ORDER BY CLASSID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900300L_1] TO [DYNGRP]
GO
