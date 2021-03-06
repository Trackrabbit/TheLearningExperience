SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900300SS_1] (@CLASSID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod, DEX_ROW_ID FROM .B2900300 WHERE CLASSID = @CLASSID ORDER BY CLASSID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900300SS_1] TO [DYNGRP]
GO
