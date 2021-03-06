SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930405SI] (@BACHNUMB char(15), @BSSI_Facility_ID char(67), @SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNSEQNBR numeric(19,5), @CMPNTSEQ int, @BSSI_Lease_Loan_Number char(17), @BSSI_Recog_Frequency smallint, @EMPLOYID char(15), @DEDUCTON char(7), @STRTDATE datetime, @ENDDATE datetime, @PAYMENT_AMOUNT numeric(19,5), @CHRGAMNT numeric(19,5), @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2930405 (BACHNUMB, BSSI_Facility_ID, SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, CMPNTSEQ, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, EMPLOYID, DEDUCTON, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, USERID) VALUES ( @BACHNUMB, @BSSI_Facility_ID, @SCHEDULE_NUMBER, @Schedule_Payment_Number, @LNSEQNBR, @CMPNTSEQ, @BSSI_Lease_Loan_Number, @BSSI_Recog_Frequency, @EMPLOYID, @DEDUCTON, @STRTDATE, @ENDDATE, @PAYMENT_AMOUNT, @CHRGAMNT, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930405SI] TO [DYNGRP]
GO
