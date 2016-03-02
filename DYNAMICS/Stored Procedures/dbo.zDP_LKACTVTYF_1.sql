SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_LKACTVTYF_1] (@USERID_RS char(15), @FORMNAME_RS char(79), @USERID_RE char(15), @FORMNAME_RE char(79)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, FORMNAME, DEX_ROW_ID FROM .LKACTVTY ORDER BY USERID ASC, FORMNAME ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, FORMNAME, DEX_ROW_ID FROM .LKACTVTY WHERE USERID = @USERID_RS AND FORMNAME BETWEEN @FORMNAME_RS AND @FORMNAME_RE ORDER BY USERID ASC, FORMNAME ASC END ELSE BEGIN SELECT TOP 25  USERID, FORMNAME, DEX_ROW_ID FROM .LKACTVTY WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND FORMNAME BETWEEN @FORMNAME_RS AND @FORMNAME_RE ORDER BY USERID ASC, FORMNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LKACTVTYF_1] TO [DYNGRP]
GO
