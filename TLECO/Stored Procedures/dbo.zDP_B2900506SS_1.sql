SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900506SS_1] (@BSSI_Lease_Loan_Number char(17), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, BSSI_EnableGracePeriod, BSSI_ActualPymtAmt, DEX_ROW_ID FROM .B2900506 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Lease_Loan_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900506SS_1] TO [DYNGRP]
GO
