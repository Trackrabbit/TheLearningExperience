SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920401SS_1] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, Schedule_Payment_Number, DOCNUMBR, CUSTNMBR, PAYMENT_AMOUNT, TAXAMNT, DEX_ROW_ID FROM .B2920401 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920401SS_1] TO [DYNGRP]
GO
