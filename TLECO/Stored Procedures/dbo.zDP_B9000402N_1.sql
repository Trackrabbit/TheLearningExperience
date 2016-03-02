SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000402N_1] (@BS int, @SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNITMSEQ int, @SCHEDULE_NUMBER_RS char(21), @Schedule_Payment_Number_RS smallint, @LNITMSEQ_RS int, @SCHEDULE_NUMBER_RE char(21), @Schedule_Payment_Number_RE smallint, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 WHERE ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNITMSEQ > @LNITMSEQ OR SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number > @Schedule_Payment_Number OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, LNITMSEQ ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNITMSEQ > @LNITMSEQ OR SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number > @Schedule_Payment_Number OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, PMNTNMBR, PYMNTDAT, PAYMENT_AMOUNT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, CHEKNMBR, DEX_ROW_ID FROM .B9000402 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNITMSEQ > @LNITMSEQ OR SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number > @Schedule_Payment_Number OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000402N_1] TO [DYNGRP]
GO
