SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900504F_2] (@BSSI_LeaseID_RS char(17), @BSSI_LeaseID_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, STRTDATE, BSSI_Recalculate, LNITMSEQ, BSSI_LeaseID, BSSI_EnableMinTerm, DEX_ROW_ID FROM .B2900504 ORDER BY BSSI_LeaseID ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, STRTDATE, BSSI_Recalculate, LNITMSEQ, BSSI_LeaseID, BSSI_EnableMinTerm, DEX_ROW_ID FROM .B2900504 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS ORDER BY BSSI_LeaseID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, STRTDATE, BSSI_Recalculate, LNITMSEQ, BSSI_LeaseID, BSSI_EnableMinTerm, DEX_ROW_ID FROM .B2900504 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE ORDER BY BSSI_LeaseID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900504F_2] TO [DYNGRP]
GO
