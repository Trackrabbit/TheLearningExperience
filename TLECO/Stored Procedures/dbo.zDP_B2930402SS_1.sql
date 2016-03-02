SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930402SS_1] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @BSSI_ChargeID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR, BSSI_ChargeID, BSSI_EnableLoanPayrollLi, DEX_ROW_ID FROM .B2930402 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND BSSI_ChargeID = @BSSI_ChargeID ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, BSSI_ChargeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930402SS_1] TO [DYNGRP]
GO