SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900503SS_3] (@CUSTNMBR char(15), @DUEDATE datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, BSSI_LeaseID, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, DEX_ROW_ID FROM .B2900503 WHERE CUSTNMBR = @CUSTNMBR AND DUEDATE = @DUEDATE ORDER BY CUSTNMBR ASC, DUEDATE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900503SS_3] TO [DYNGRP]
GO