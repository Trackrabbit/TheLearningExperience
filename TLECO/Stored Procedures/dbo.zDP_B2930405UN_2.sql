SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930405UN_2] (@BS int, @USERID char(15), @USERID_RS char(15), @USERID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE ( USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE USERID = @USERID_RS AND ( USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ( USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930405UN_2] TO [DYNGRP]
GO
