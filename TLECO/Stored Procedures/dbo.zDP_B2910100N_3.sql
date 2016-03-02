SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910100N_3] (@BS int, @SCHEDULE_NUMBER char(21), @DEX_ROW_ID int, @SCHEDULE_NUMBER_RS char(21), @SCHEDULE_NUMBER_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 WHERE ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND ( SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR SCHEDULE_NUMBER > @SCHEDULE_NUMBER ) ORDER BY SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910100N_3] TO [DYNGRP]
GO
