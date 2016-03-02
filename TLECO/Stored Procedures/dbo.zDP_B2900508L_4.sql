SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900508L_4] (@BSSI_IsAP_RS tinyint, @SCHEDULE_NUMBER_RS char(21), @Schedule_Payment_Number_RS smallint, @DATE1_RS datetime, @JRNENTRY_RS int, @BSSI_IsAP_RE tinyint, @SCHEDULE_NUMBER_RE char(21), @Schedule_Payment_Number_RE smallint, @DATE1_RE datetime, @JRNENTRY_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_IsAP_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 ORDER BY BSSI_IsAP DESC, SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, DATE1 DESC, JRNENTRY DESC END ELSE IF @BSSI_IsAP_RS = @BSSI_IsAP_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 WHERE BSSI_IsAP = @BSSI_IsAP_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY BSSI_IsAP DESC, SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, DATE1 DESC, JRNENTRY DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, BSSI_Lease_Loan_Number, JRNENTRY, INTEREST_AMOUNT, BSSI_AccrualsPaid, BSSI_PaidJournalEntry, MTHSLCTD, YEAR1, DUMYRCRD, MJW_Investment_Number, DATE1, BSSI_IsAP, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, RVRSNGDT, DEX_ROW_ID FROM .B2900508 WHERE BSSI_IsAP BETWEEN @BSSI_IsAP_RS AND @BSSI_IsAP_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY BSSI_IsAP DESC, SCHEDULE_NUMBER DESC, Schedule_Payment_Number DESC, DATE1 DESC, JRNENTRY DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900508L_4] TO [DYNGRP]
GO
