SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000402SS_1] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNITMSEQ = @LNITMSEQ ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000402SS_1] TO [DYNGRP]
GO
