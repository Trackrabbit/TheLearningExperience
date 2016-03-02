SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930508UN_2] (@BS int, @JRNENTRY int, @JRNENTRY_RS int, @JRNENTRY_RE int) AS /* 12.00.0311.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2930508 WHERE ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2930508 WHERE JRNENTRY = @JRNENTRY_RS AND ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2930508 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930508UN_2] TO [DYNGRP]
GO
