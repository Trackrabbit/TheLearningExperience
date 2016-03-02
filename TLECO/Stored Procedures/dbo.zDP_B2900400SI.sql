SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900400SI] (@BSSI_Rev_Source_ID char(25), @BSSI_Description char(51), @REC_ACCT_IDX int, @REC_OFFSET_ACCT_IDX int, @INT_INCOME_ACCT_IDX int, @BSSI_DefferalInterestInd int, @NOTEINDX numeric(19,5), @BSSI_AccrualsAcctIdx int, @BSSI_DeductionAcctIdx int, @BSSI_DefferalChargeINDX int, @BSSI_DefferalPrincplINDX int, @BSSI_LoanDisbursementIND int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2900400 (BSSI_Rev_Source_ID, BSSI_Description, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, BSSI_DefferalInterestInd, NOTEINDX, BSSI_AccrualsAcctIdx, BSSI_DeductionAcctIdx, BSSI_DefferalChargeINDX, BSSI_DefferalPrincplINDX, BSSI_LoanDisbursementIND) VALUES ( @BSSI_Rev_Source_ID, @BSSI_Description, @REC_ACCT_IDX, @REC_OFFSET_ACCT_IDX, @INT_INCOME_ACCT_IDX, @BSSI_DefferalInterestInd, @NOTEINDX, @BSSI_AccrualsAcctIdx, @BSSI_DeductionAcctIdx, @BSSI_DefferalChargeINDX, @BSSI_DefferalPrincplINDX, @BSSI_LoanDisbursementIND) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900400SI] TO [DYNGRP]
GO
