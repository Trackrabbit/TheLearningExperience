SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02600F_2] (@DATE1_RS datetime, @TIME1_RS datetime, @DATE1_RE datetime, @TIME1_RE datetime) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  USERID, DATE1, TIME1, USRNTFLG, DEX_ROW_ID, TXTFIELD FROM .SY02600 ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  USERID, DATE1, TIME1, USRNTFLG, DEX_ROW_ID, TXTFIELD FROM .SY02600 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, DATE1, TIME1, USRNTFLG, DEX_ROW_ID, TXTFIELD FROM .SY02600 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02600F_2] TO [DYNGRP]
GO
