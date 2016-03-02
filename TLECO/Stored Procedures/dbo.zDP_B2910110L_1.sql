SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910110L_1] (@USERID_RS char(15), @SCHEDULE_NUMBER_RS char(21), @USERID_RE char(15), @SCHEDULE_NUMBER_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, ORIG_DOC_NUMBER, USERID, DEX_ROW_ID FROM .B2910110 ORDER BY USERID DESC, SCHEDULE_NUMBER DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, ORIG_DOC_NUMBER, USERID, DEX_ROW_ID FROM .B2910110 WHERE USERID = @USERID_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY USERID DESC, SCHEDULE_NUMBER DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, ORIG_DOC_NUMBER, USERID, DEX_ROW_ID FROM .B2910110 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY USERID DESC, SCHEDULE_NUMBER DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910110L_1] TO [DYNGRP]
GO
