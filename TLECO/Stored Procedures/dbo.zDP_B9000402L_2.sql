SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000402L_2] (@SCHEDULE_NUMBER_RS char(21), @PYMNTDAT_RS datetime, @SCHEDULE_NUMBER_RE char(21), @PYMNTDAT_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 ORDER BY SCHEDULE_NUMBER DESC, PYMNTDAT DESC, DEX_ROW_ID DESC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND PYMNTDAT BETWEEN @PYMNTDAT_RS AND @PYMNTDAT_RE ORDER BY SCHEDULE_NUMBER DESC, PYMNTDAT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND PYMNTDAT BETWEEN @PYMNTDAT_RS AND @PYMNTDAT_RE ORDER BY SCHEDULE_NUMBER DESC, PYMNTDAT DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000402L_2] TO [DYNGRP]
GO