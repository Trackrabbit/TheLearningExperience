SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06301F_1] (@DATE1_RS datetime, @TIME1_RS datetime, @DATE1_RE datetime, @TIME1_RE datetime) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  DATE1, TIME1, Status, STRTDATE, STRTTIME, ENDDATE, ENDTIME, DEX_ROW_ID FROM .SVC06301 ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  DATE1, TIME1, Status, STRTDATE, STRTTIME, ENDDATE, ENDTIME, DEX_ROW_ID FROM .SVC06301 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DATE1, TIME1, Status, STRTDATE, STRTTIME, ENDDATE, ENDTIME, DEX_ROW_ID FROM .SVC06301 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06301F_1] TO [DYNGRP]
GO
