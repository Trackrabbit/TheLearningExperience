SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930601L_5] (@CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  USERID, SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, AMNTPAID, PMNTNMBR, JRNENTRY, BACHNUMB, BSSI_Schedule_Posting_St, BSSI_Lease_Loan_Number, SCHEDULE_INT_RATE, LNSEQNBR, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, BSSI_Journal_Entry, BSSI_Journal_Entry_Accru, BSSI_JournalEntryAdjDeff, DEX_ROW_ID, CMMTTEXT FROM .B2930601 ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  USERID, SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, AMNTPAID, PMNTNMBR, JRNENTRY, BACHNUMB, BSSI_Schedule_Posting_St, BSSI_Lease_Loan_Number, SCHEDULE_INT_RATE, LNSEQNBR, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, BSSI_Journal_Entry, BSSI_Journal_Entry_Accru, BSSI_JournalEntryAdjDeff, DEX_ROW_ID, CMMTTEXT FROM .B2930601 WHERE CUSTNMBR = @CUSTNMBR_RS ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, AMNTPAID, PMNTNMBR, JRNENTRY, BACHNUMB, BSSI_Schedule_Posting_St, BSSI_Lease_Loan_Number, SCHEDULE_INT_RATE, LNSEQNBR, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, BSSI_Journal_Entry, BSSI_Journal_Entry_Accru, BSSI_JournalEntryAdjDeff, DEX_ROW_ID, CMMTTEXT FROM .B2930601 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930601L_5] TO [DYNGRP]
GO
