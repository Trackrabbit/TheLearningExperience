SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900400SS_1] (@BSSI_Rev_Source_ID char(25)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_Rev_Source_ID, BSSI_Description, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, NOTEINDX, BSSI_AccrualsAcctIdx, BSSI_DeductionAcctIdx, BSSI_DefferalChargeINDX, BSSI_DefferalPrincplINDX, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900400 WHERE BSSI_Rev_Source_ID = @BSSI_Rev_Source_ID ORDER BY BSSI_Rev_Source_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900400SS_1] TO [DYNGRP]
GO
