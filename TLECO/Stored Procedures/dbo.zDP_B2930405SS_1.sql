SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930405SS_1] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNSEQNBR numeric(19,5), @CMPNTSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, LNSEQNBR ASC, CMPNTSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930405SS_1] TO [DYNGRP]
GO
