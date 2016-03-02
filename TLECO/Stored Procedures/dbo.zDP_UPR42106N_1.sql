SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42106N_1] (@BS int, @Pay_Schedule char(15), @EMPLOYID char(15), @Pay_Schedule_RS char(15), @EMPLOYID_RS char(15), @Pay_Schedule_RE char(15), @EMPLOYID_RE char(15)) AS  set nocount on IF @Pay_Schedule_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, EMPLOYID, DEX_ROW_ID FROM .UPR42106 WHERE ( Pay_Schedule = @Pay_Schedule AND EMPLOYID > @EMPLOYID OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, EMPLOYID ASC END ELSE IF @Pay_Schedule_RS = @Pay_Schedule_RE BEGIN SELECT TOP 25  Pay_Schedule, EMPLOYID, DEX_ROW_ID FROM .UPR42106 WHERE Pay_Schedule = @Pay_Schedule_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( Pay_Schedule = @Pay_Schedule AND EMPLOYID > @EMPLOYID OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, EMPLOYID, DEX_ROW_ID FROM .UPR42106 WHERE Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( Pay_Schedule = @Pay_Schedule AND EMPLOYID > @EMPLOYID OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42106N_1] TO [DYNGRP]
GO
