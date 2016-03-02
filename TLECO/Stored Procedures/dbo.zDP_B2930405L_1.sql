SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930405L_1] (@SCHEDULE_NUMBER_RS char(21), @Schedule_Payment_Number_RS smallint, @LNSEQNBR_RS numeric(19,5), @CMPNTSEQ_RS int, @SCHEDULE_NUMBER_RE char(21), @Schedule_Payment_Number_RE smallint, @LNSEQNBR_RE numeric(19,5), @CMPNTSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 ORDER BY SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, LNSEQNBR DESC, CMPNTSEQ DESC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE ORDER BY SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, LNSEQNBR DESC, CMPNTSEQ DESC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE ORDER BY SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, LNSEQNBR DESC, CMPNTSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930405L_1] TO [DYNGRP]
GO
