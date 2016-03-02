SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900501SS_1] (@BSSI_Lease_Loan_Number char(17), @LNSEQNBR numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, LNSEQNBR, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B2900501 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND LNSEQNBR = @LNSEQNBR ORDER BY BSSI_Lease_Loan_Number ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900501SS_1] TO [DYNGRP]
GO
