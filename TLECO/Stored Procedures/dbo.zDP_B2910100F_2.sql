SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910100F_2] (@SCHEDULE_NUMBER_RS char(21), @Schedule_Payment_Number_RS smallint, @SCHEDULE_NUMBER_RE char(21), @Schedule_Payment_Number_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, DEX_ROW_ID ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND Schedule_Payment_Number BETWEEN @Schedule_Payment_Number_RS AND @Schedule_Payment_Number_RE ORDER BY SCHEDULE_NUMBER ASC, Schedule_Payment_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910100F_2] TO [DYNGRP]
GO
