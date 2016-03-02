SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30500L_1] (@EMPLOYID_RS char(15), @Pay_Schedule_RS char(15), @YEAR1_RS smallint, @PERIODID_RS smallint, @EMPLOYID_RE char(15), @Pay_Schedule_RE char(15), @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, Workflow_Status, DEX_ROW_ID FROM .UPR30500 ORDER BY EMPLOYID DESC, Pay_Schedule DESC, YEAR1 DESC, PERIODID DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, Workflow_Status, DEX_ROW_ID FROM .UPR30500 WHERE EMPLOYID = @EMPLOYID_RS AND Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY EMPLOYID DESC, Pay_Schedule DESC, YEAR1 DESC, PERIODID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, Workflow_Status, DEX_ROW_ID FROM .UPR30500 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND Pay_Schedule BETWEEN @Pay_Schedule_RS AND @Pay_Schedule_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY EMPLOYID DESC, Pay_Schedule DESC, YEAR1 DESC, PERIODID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30500L_1] TO [DYNGRP]
GO
