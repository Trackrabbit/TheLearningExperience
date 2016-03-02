SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900511SI] (@BSSI_Lease_Loan_Number char(17), @BSSI_DeductionFrequency smallint, @BSSI_DeductionMethod smallint, @BSSI_PayPeriodOption smallint, @BSSI_SplitBiWeekly tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900511 (BSSI_Lease_Loan_Number, BSSI_DeductionFrequency, BSSI_DeductionMethod, BSSI_PayPeriodOption, BSSI_SplitBiWeekly) VALUES ( @BSSI_Lease_Loan_Number, @BSSI_DeductionFrequency, @BSSI_DeductionMethod, @BSSI_PayPeriodOption, @BSSI_SplitBiWeekly) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900511SI] TO [DYNGRP]
GO
