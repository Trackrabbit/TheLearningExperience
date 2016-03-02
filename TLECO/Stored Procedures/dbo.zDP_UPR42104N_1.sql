SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42104N_1] (@BS int, @Pay_Schedule char(15), @JOBTITLE char(7), @Pay_Schedule_RS char(15), @JOBTITLE_RS char(7), @Pay_Schedule_RE char(15), @JOBTITLE_RE char(7)) AS  set nocount on IF @Pay_Schedule_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, JOBTITLE, DEX_ROW_ID FROM .UPR42104 WHERE ( Pay_Schedule = @Pay_Schedule AND JOBTITLE > @JOBTITLE OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, JOBTITLE ASC END ELSE IF @Pay_Schedule_RS = @Pay_Schedule_RE BEGIN SELECT TOP 25  Pay_Schedule, JOBTITLE, DEX_ROW_ID FROM .UPR42104 WHERE Pay_Schedule = @Pay_Schedule_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND ( Pay_Schedule = @Pay_Schedule AND JOBTITLE > @JOBTITLE OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, JOBTITLE ASC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, JOBTITLE, DEX_ROW_ID FROM .UPR42104 WHERE Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND ( Pay_Schedule = @Pay_Schedule AND JOBTITLE > @JOBTITLE OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, JOBTITLE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42104N_1] TO [DYNGRP]
GO
