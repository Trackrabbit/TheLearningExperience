SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900501F_1] (@BSSI_Lease_Loan_Number_RS char(17), @LNSEQNBR_RS numeric(19,5), @BSSI_Lease_Loan_Number_RE char(17), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, LNSEQNBR, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B2900501 ORDER BY BSSI_Lease_Loan_Number ASC, LNSEQNBR ASC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, LNSEQNBR, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B2900501 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Lease_Loan_Number ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, LNSEQNBR, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B2900501 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Lease_Loan_Number ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900501F_1] TO [DYNGRP]
GO
