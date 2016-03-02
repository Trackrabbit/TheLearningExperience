SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900503UN_2] (@BS int, @SCHEDULE_NUMBER char(21), @DUEDATE datetime, @SCHEDULE_NUMBER_RS char(21), @DUEDATE_RS datetime, @SCHEDULE_NUMBER_RE char(21), @DUEDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 WHERE ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DUEDATE > @DUEDATE OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, DUEDATE ASC, DEX_ROW_ID ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DUEDATE > @DUEDATE OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, DUEDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DUEDATE > @DUEDATE OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, DUEDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900503UN_2] TO [DYNGRP]
GO
