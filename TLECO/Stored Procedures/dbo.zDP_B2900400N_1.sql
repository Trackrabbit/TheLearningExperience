SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900400N_1] (@BS int, @BSSI_Rev_Source_ID char(25), @BSSI_Rev_Source_ID_RS char(25), @BSSI_Rev_Source_ID_RE char(25)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Rev_Source_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Rev_Source_ID, BSSI_Description, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, NOTEINDX, BSSI_AccrualsAcctIdx, BSSI_DeductionAcctIdx, BSSI_DefferalChargeINDX, BSSI_DefferalPrincplINDX, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900400 WHERE ( BSSI_Rev_Source_ID > @BSSI_Rev_Source_ID ) ORDER BY BSSI_Rev_Source_ID ASC END ELSE IF @BSSI_Rev_Source_ID_RS = @BSSI_Rev_Source_ID_RE BEGIN SELECT TOP 25  BSSI_Rev_Source_ID, BSSI_Description, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, NOTEINDX, BSSI_AccrualsAcctIdx, BSSI_DeductionAcctIdx, BSSI_DefferalChargeINDX, BSSI_DefferalPrincplINDX, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900400 WHERE BSSI_Rev_Source_ID = @BSSI_Rev_Source_ID_RS AND ( BSSI_Rev_Source_ID > @BSSI_Rev_Source_ID ) ORDER BY BSSI_Rev_Source_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Rev_Source_ID, BSSI_Description, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, NOTEINDX, BSSI_AccrualsAcctIdx, BSSI_DeductionAcctIdx, BSSI_DefferalChargeINDX, BSSI_DefferalPrincplINDX, BSSI_LoanDisbursementIND, DEX_ROW_ID FROM .B2900400 WHERE BSSI_Rev_Source_ID BETWEEN @BSSI_Rev_Source_ID_RS AND @BSSI_Rev_Source_ID_RE AND ( BSSI_Rev_Source_ID > @BSSI_Rev_Source_ID ) ORDER BY BSSI_Rev_Source_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900400N_1] TO [DYNGRP]
GO