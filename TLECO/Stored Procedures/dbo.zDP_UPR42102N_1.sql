SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42102N_1] (@BS int, @Pay_Schedule char(15), @LOCATNID char(15), @Pay_Schedule_RS char(15), @LOCATNID_RS char(15), @Pay_Schedule_RE char(15), @LOCATNID_RE char(15)) AS  set nocount on IF @Pay_Schedule_RS IS NULL BEGIN SELECT TOP 25  Pay_Schedule, LOCATNID, DEX_ROW_ID FROM .UPR42102 WHERE ( Pay_Schedule = @Pay_Schedule AND LOCATNID > @LOCATNID OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, LOCATNID ASC END ELSE IF @Pay_Schedule_RS = @Pay_Schedule_RE BEGIN SELECT TOP 25  Pay_Schedule, LOCATNID, DEX_ROW_ID FROM .UPR42102 WHERE Pay_Schedule = @Pay_Schedule_RS AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND ( Pay_Schedule = @Pay_Schedule AND LOCATNID > @LOCATNID OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, LOCATNID ASC END ELSE BEGIN SELECT TOP 25  Pay_Schedule, LOCATNID, DEX_ROW_ID FROM .UPR42102 WHERE Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE AND ( Pay_Schedule = @Pay_Schedule AND LOCATNID > @LOCATNID OR Pay_Schedule > @Pay_Schedule ) ORDER BY Pay_Schedule ASC, LOCATNID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42102N_1] TO [DYNGRP]
GO
