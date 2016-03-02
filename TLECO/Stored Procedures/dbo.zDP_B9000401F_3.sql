SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000401F_3] (@CUSTNMBR_RS char(15), @DUEDATE_RS datetime, @CUSTNMBR_RE char(15), @DUEDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, INVCNMBR, CHRGAMNT, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, INVODATE, BSSI_DaysofInterest, BSSI_SpecialPayment, DEX_ROW_ID FROM .B9000401 ORDER BY CUSTNMBR ASC, DUEDATE ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, INVCNMBR, CHRGAMNT, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, INVODATE, BSSI_DaysofInterest, BSSI_SpecialPayment, DEX_ROW_ID FROM .B9000401 WHERE CUSTNMBR = @CUSTNMBR_RS AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE ORDER BY CUSTNMBR ASC, DUEDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, INVCNMBR, CHRGAMNT, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, INVODATE, BSSI_DaysofInterest, BSSI_SpecialPayment, DEX_ROW_ID FROM .B9000401 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE ORDER BY CUSTNMBR ASC, DUEDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000401F_3] TO [DYNGRP]
GO
