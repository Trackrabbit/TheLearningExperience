SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20401F_2] (@SCHEDULE_NUMBER_RS char(21), @DUEDATE_RS datetime, @SCHEDULE_NUMBER_RE char(21), @DUEDATE_RE datetime) AS  set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .RM20401 ORDER BY SCHEDULE_NUMBER ASC, DUEDATE ASC, DEX_ROW_ID ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .RM20401 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE ORDER BY SCHEDULE_NUMBER ASC, DUEDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .RM20401 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE ORDER BY SCHEDULE_NUMBER ASC, DUEDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20401F_2] TO [DYNGRP]
GO
