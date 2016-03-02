SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900300F_2] (@CLASDSCR_RS char(31), @CLASDSCR_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @CLASDSCR_RS IS NULL BEGIN SELECT TOP 25  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 ORDER BY CLASDSCR ASC, DEX_ROW_ID ASC END ELSE IF @CLASDSCR_RS = @CLASDSCR_RE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 WHERE CLASDSCR = @CLASDSCR_RS ORDER BY CLASDSCR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 WHERE CLASDSCR BETWEEN @CLASDSCR_RS AND @CLASDSCR_RE ORDER BY CLASDSCR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900300F_2] TO [DYNGRP]
GO
