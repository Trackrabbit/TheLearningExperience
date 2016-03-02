SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN07F_1] (@BENEFIT_RS char(7), @BENEFIT_RE char(7)) AS  set nocount on IF @BENEFIT_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, ENTRANCEDATES_I, WAITINGPERIOD_I, BONUSELACTIVE_I, DEX_ROW_ID FROM .HR2BEN07 ORDER BY BENEFIT ASC END ELSE IF @BENEFIT_RS = @BENEFIT_RE BEGIN SELECT TOP 25  BENEFIT, ENTRANCEDATES_I, WAITINGPERIOD_I, BONUSELACTIVE_I, DEX_ROW_ID FROM .HR2BEN07 WHERE BENEFIT = @BENEFIT_RS ORDER BY BENEFIT ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, ENTRANCEDATES_I, WAITINGPERIOD_I, BONUSELACTIVE_I, DEX_ROW_ID FROM .HR2BEN07 WHERE BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN07F_1] TO [DYNGRP]
GO
