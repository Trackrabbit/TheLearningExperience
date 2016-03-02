SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42103N_1] (@BS int, @Pay_Schedule char(15), @DEPRTMNT char(7), @Pay_Schedule_RS char(15), @DEPRTMNT_RS char(7), @Pay_Schedule_RE char(15), @DEPRTMNT_RE char(7)) AS  set nocount on IF @Pay_Schedule_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, DEPRTMNT, DEX_ROW_ID FROM .UPR42103 WHERE ( Pay_Schedule = @Pay_Schedule AND DEPRTMNT < @DEPRTMNT OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, DEPRTMNT DESC END ELSE IF @Pay_Schedule_RS = @Pay_Schedule_RE BEGIN SELECT TOP 25  Pay_Schedule, DEPRTMNT, DEX_ROW_ID FROM .UPR42103 WHERE Pay_Schedule = @Pay_Schedule_RS AND DEPRTMNT BETWEEN @DEPRTMNT_RE AND @DEPRTMNT_RS AND ( Pay_Schedule = @Pay_Schedule AND DEPRTMNT < @DEPRTMNT OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, DEPRTMNT DESC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, DEPRTMNT, DEX_ROW_ID FROM .UPR42103 WHERE Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RE AND @DEPRTMNT_RS AND ( Pay_Schedule = @Pay_Schedule AND DEPRTMNT < @DEPRTMNT OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, DEPRTMNT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42103N_1] TO [DYNGRP]
GO
