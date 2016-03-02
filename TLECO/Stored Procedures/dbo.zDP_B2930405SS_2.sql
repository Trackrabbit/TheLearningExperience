SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930405SS_2] (@USERID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID, DEX_ROW_ID FROM .B2930405 WHERE USERID = @USERID ORDER BY USERID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930405SS_2] TO [DYNGRP]
GO