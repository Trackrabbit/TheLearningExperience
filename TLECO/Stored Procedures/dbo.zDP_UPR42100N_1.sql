SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42100N_1] (@BS int, @Pay_Schedule char(15), @Pay_Schedule_RS char(15), @Pay_Schedule_RE char(15)) AS  set nocount on IF @Pay_Schedule_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE ( Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC END ELSE IF @Pay_Schedule_RS = @Pay_Schedule_RE BEGIN SELECT TOP 25  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE Pay_Schedule = @Pay_Schedule_RS AND ( Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND ( Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42100N_1] TO [DYNGRP]
GO
