SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000005L_2] (@USERID_RS char(15), @BACHNUMB_RS char(15), @USERID_RE char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, BACHNUMB, JRNENTRY, DATE1, TIME1, DEX_ROW_ID FROM .IF000005 ORDER BY USERID DESC, BACHNUMB DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, BACHNUMB, JRNENTRY, DATE1, TIME1, DEX_ROW_ID FROM .IF000005 WHERE USERID = @USERID_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY USERID DESC, BACHNUMB DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, BACHNUMB, JRNENTRY, DATE1, TIME1, DEX_ROW_ID FROM .IF000005 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY USERID DESC, BACHNUMB DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000005L_2] TO [DYNGRP]
GO