SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900508SS_1] (@BSSI_IsAP tinyint, @SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 WHERE BSSI_IsAP = @BSSI_IsAP AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number ORDER BY BSSI_IsAP ASC, SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900508SS_1] TO [DYNGRP]
GO
