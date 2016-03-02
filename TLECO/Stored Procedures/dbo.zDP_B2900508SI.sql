SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900508SI] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @BSSI_Lease_Loan_Number char(17), @JRNENTRY int, @INTEREST_AMOUNT numeric(19,5), @BSSI_AccrualsPaid tinyint, @BSSI_PaidJournalEntry int, @MTHSLCTD smallint, @YEAR1 smallint, @DUMYRCRD tinyint, @MJW_Investment_Number char(21), @DATE1 datetime, @BSSI_IsAP tinyint, @BSSI_Billing_Start_Date datetime, @BSSI_Billing_End_Date datetime, @RVRSNGDT datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900508 (SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT) VALUES ( @SCHEDULE_NUMBER, @Schedule_Payment_Number, @BSSI_Lease_Loan_Number, @JRNENTRY, @INTEREST_AMOUNT, @BSSI_AccrualsPaid, @BSSI_PaidJournalEntry, @MTHSLCTD, @YEAR1, @DUMYRCRD, @MJW_Investment_Number, @DATE1, @BSSI_IsAP, @BSSI_Billing_Start_Date, @BSSI_Billing_End_Date, @RVRSNGDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900508SI] TO [DYNGRP]
GO
