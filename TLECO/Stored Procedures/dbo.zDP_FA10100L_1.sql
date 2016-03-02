SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10100L_1] (@USERID_RS char(15), @GROUPNAME_RS char(15), @USERID_RE char(15), @GROUPNAME_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, GROUPNAME, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, DEX_ROW_ID FROM .FA10100 ORDER BY USERID DESC, GROUPNAME DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, GROUPNAME, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, DEX_ROW_ID FROM .FA10100 WHERE USERID = @USERID_RS AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE ORDER BY USERID DESC, GROUPNAME DESC END ELSE BEGIN SELECT TOP 25  USERID, GROUPNAME, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, DEX_ROW_ID FROM .FA10100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND GROUPNAME BETWEEN @GROUPNAME_RS AND @GROUPNAME_RE ORDER BY USERID DESC, GROUPNAME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10100L_1] TO [DYNGRP]
GO