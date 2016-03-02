SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42100N_2] (@BS int, @DSCRIPTN char(31), @Pay_Schedule char(15), @DEX_ROW_ID int, @DSCRIPTN_RS char(31), @Pay_Schedule_RS char(15), @DSCRIPTN_RE char(31), @Pay_Schedule_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE ( DSCRIPTN = @DSCRIPTN AND Pay_Schedule = @Pay_Schedule AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND Pay_Schedule > @Pay_Schedule OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, Pay_Schedule ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE DSCRIPTN = @DSCRIPTN_RS AND Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND ( DSCRIPTN = @DSCRIPTN AND Pay_Schedule = @Pay_Schedule AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND Pay_Schedule > @Pay_Schedule OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, Pay_Schedule ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND ( DSCRIPTN = @DSCRIPTN AND Pay_Schedule = @Pay_Schedule AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND Pay_Schedule > @Pay_Schedule OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, Pay_Schedule ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42100N_2] TO [DYNGRP]
GO
