SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900508L_3] (@BSSI_IsAP_RS tinyint, @SCHEDULE_NUMBER_RS char(21), @Schedule_Payment_Number_RS smallint, @MTHSLCTD_RS smallint, @YEAR1_RS smallint, @BSSI_IsAP_RE tinyint, @SCHEDULE_NUMBER_RE char(21), @Schedule_Payment_Number_RE smallint, @MTHSLCTD_RE smallint, @YEAR1_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_IsAP_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 ORDER BY BSSI_IsAP DESC, SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, MTHSLCTD DESC, YEAR1 DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_IsAP_RS = @BSSI_IsAP_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 WHERE BSSI_IsAP = @BSSI_IsAP_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND MTHSLCTD BETWEEN @MTHSLCTD_RS AND @MTHSLCTD_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY BSSI_IsAP DESC, SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, MTHSLCTD DESC, YEAR1 DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 WHERE BSSI_IsAP BETWEEN @BSSI_IsAP_RS AND @BSSI_IsAP_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND MTHSLCTD BETWEEN @MTHSLCTD_RS AND @MTHSLCTD_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY BSSI_IsAP DESC, SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, MTHSLCTD DESC, YEAR1 DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900508L_3] TO [DYNGRP]
GO
