SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42110F_1] (@Pay_Schedule_RS char(15), @Pay_Schedule_RE char(15)) AS  set nocount on IF @Pay_Schedule_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, SEQNUMBR, DEX_ROW_ID FROM .UPR42110 ORDER BY Pay_Schedule ASC END ELSE IF @Pay_Schedule_RS = @Pay_Schedule_RE BEGIN SELECT TOP 25  Pay_Schedule, SEQNUMBR, DEX_ROW_ID FROM .UPR42110 WHERE Pay_Schedule = @Pay_Schedule_RS ORDER BY Pay_Schedule ASC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, SEQNUMBR, DEX_ROW_ID FROM .UPR42110 WHERE Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE ORDER BY Pay_Schedule ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42110F_1] TO [DYNGRP]
GO
