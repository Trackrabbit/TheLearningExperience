SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920400F_1] (@SCHEDULE_NUMBER_RS char(21), @SCHEDULE_NUMBER_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @SCHEDULE_NUMBER_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BS29_Payment_Frequency, DEX_ROW_ID FROM .B2920400 ORDER BY SCHEDULE_NUMBER ASC END ELSE IF @SCHEDULE_NUMBER_RS = @SCHEDULE_NUMBER_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BS29_Payment_Frequency, DEX_ROW_ID FROM .B2920400 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER_RS ORDER BY SCHEDULE_NUMBER ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, BS29_Payment_Frequency, DEX_ROW_ID FROM .B2920400 WHERE SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY SCHEDULE_NUMBER ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920400F_1] TO [DYNGRP]
GO
