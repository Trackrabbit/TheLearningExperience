SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SYVM1000UN_2] (@BS int, @PRODID smallint, @USERID char(15), @PRODID_RS smallint, @USERID_RS char(15), @PRODID_RE smallint, @USERID_RE char(15)) AS  set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, VERSIONSTRING_I, USERID, DEX_ROW_ID FROM .SYVM1000 WHERE ( PRODID = @PRODID AND USERID > @USERID OR PRODID > @PRODID ) ORDER BY PRODID ASC, USERID ASC, DEX_ROW_ID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, VERSIONSTRING_I, USERID, DEX_ROW_ID FROM .SYVM1000 WHERE PRODID = @PRODID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( PRODID = @PRODID AND USERID > @USERID OR PRODID > @PRODID ) ORDER BY PRODID ASC, USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, VERSIONSTRING_I, USERID, DEX_ROW_ID FROM .SYVM1000 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( PRODID = @PRODID AND USERID > @USERID OR PRODID > @PRODID ) ORDER BY PRODID ASC, USERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SYVM1000UN_2] TO [DYNGRP]
GO
