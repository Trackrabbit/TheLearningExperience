SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900200SI] (@CUSTNMBR char(15), @LNITMSEQ int, @USERID char(15), @DOCDATE datetime, @SLSAMNT numeric(19,5), @PAYMENT_AMOUNT numeric(19,5), @NUM_PAYMENTS smallint, @NOFCUPER smallint, @SCHEDULE_INT_RATE int, @DOCNUMBR char(21), @SCHEDULE_NUMBER char(21), @BSSI_InterestRate int, @BSSI_LeaseID char(17), @PYMNT_FREQUENCY smallint, @SCHEDULE_INT_TYPE1 smallint, @FIRST_INV_DUE_DATE datetime, @BSSI_CalculatedDeferralA numeric(19,5), @BSSI_EnableNegativeAmort tinyint, @BSSI_LeaseLoanType char(7), @BSSI_Facility_ID char(67), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900200 (CUSTNMBR, LNITMSEQ, USERID, DOCDATE, SLSAMNT, PAYMENT_AMOUNT, NUM_PAYMENTS, NOFCUPER, SCHEDULE_INT_RATE, DOCNUMBR, SCHEDULE_NUMBER, BSSI_InterestRate, BSSI_LeaseID, PYMNT_FREQUENCY, SCHEDULE_INT_TYPE1, FIRST_INV_DUE_DATE, BSSI_CalculatedDeferralA, BSSI_EnableNegativeAmort, BSSI_LeaseLoanType, BSSI_Facility_ID) VALUES ( @CUSTNMBR, @LNITMSEQ, @USERID, @DOCDATE, @SLSAMNT, @PAYMENT_AMOUNT, @NUM_PAYMENTS, @NOFCUPER, @SCHEDULE_INT_RATE, @DOCNUMBR, @SCHEDULE_NUMBER, @BSSI_InterestRate, @BSSI_LeaseID, @PYMNT_FREQUENCY, @SCHEDULE_INT_TYPE1, @FIRST_INV_DUE_DATE, @BSSI_CalculatedDeferralA, @BSSI_EnableNegativeAmort, @BSSI_LeaseLoanType, @BSSI_Facility_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900200SI] TO [DYNGRP]
GO
