SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920401L_2] (@CUSTNMBR_RS char(15), @DOCNUMBR_RS char(21), @CUSTNMBR_RE char(15), @DOCNUMBR_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, DOCNUMBR, CUSTNMBR, PAYMENT_AMOUNT, TAXAMNT, DEX_ROW_ID FROM .B2920401 ORDER BY CUSTNMBR DESC, DOCNUMBR DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, DOCNUMBR, CUSTNMBR, PAYMENT_AMOUNT, TAXAMNT, DEX_ROW_ID FROM .B2920401 WHERE CUSTNMBR = @CUSTNMBR_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY CUSTNMBR DESC, DOCNUMBR DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, DOCNUMBR, CUSTNMBR, PAYMENT_AMOUNT, TAXAMNT, DEX_ROW_ID FROM .B2920401 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY CUSTNMBR DESC, DOCNUMBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920401L_2] TO [DYNGRP]
GO
