SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900503L_5] (@BSSI_LeaseID_RS char(17), @BSSI_LeaseID_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 ORDER BY BSSI_LeaseID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS ORDER BY BSSI_LeaseID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE ORDER BY BSSI_LeaseID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900503L_5] TO [DYNGRP]
GO
