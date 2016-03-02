SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900300SI] (@CLASSID char(15), @CLASDSCR char(31), @BSSI_Recog_TemplateID char(25), @BSSI_Rev_Source_ID char(25), @TAXSCHID char(15), @SLPRSNID char(15), @BSSI_LeaseLoanType char(7), @BSSI_EnableNegativeAmort tinyint, @BSSI_EnableLoanPayrollLi tinyint, @BSSI_EnableDisbLoan tinyint, @BSSI_EnableDeferCharge tinyint, @BSSI_EnableDeferPrincipa tinyint, @BSSI_EnableDeferInterest tinyint, @BSSI_RecalculateInterest tinyint, @BSSI_InterestMethod smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900300 (CLASSID, CLASDSCR, BSSI_Recog_TemplateID, BSSI_Rev_Source_ID, TAXSCHID, SLPRSNID, BSSI_LeaseLoanType, BSSI_EnableNegativeAmort, BSSI_EnableLoanPayrollLi, BSSI_EnableDisbLoan, BSSI_EnableDeferCharge, BSSI_EnableDeferPrincipa, BSSI_EnableDeferInterest, BSSI_RecalculateInterest, BSSI_InterestMethod) VALUES ( @CLASSID, @CLASDSCR, @BSSI_Recog_TemplateID, @BSSI_Rev_Source_ID, @TAXSCHID, @SLPRSNID, @BSSI_LeaseLoanType, @BSSI_EnableNegativeAmort, @BSSI_EnableLoanPayrollLi, @BSSI_EnableDisbLoan, @BSSI_EnableDeferCharge, @BSSI_EnableDeferPrincipa, @BSSI_EnableDeferInterest, @BSSI_RecalculateInterest, @BSSI_InterestMethod) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900300SI] TO [DYNGRP]
GO
