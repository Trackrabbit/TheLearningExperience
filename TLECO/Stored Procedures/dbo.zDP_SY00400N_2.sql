SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00400N_2] (@BS int, @USERID char(15), @PALSQNUM smallint, @USERID_RS char(15), @PALSQNUM_RS smallint, @USERID_RE char(15), @PALSQNUM_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, PALSQNUM, PALPMTNM, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY00400 WHERE ( USERID = @USERID AND PALSQNUM > @PALSQNUM OR USERID > @USERID ) ORDER BY USERID ASC, PALSQNUM ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, PALSQNUM, PALPMTNM, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY00400 WHERE USERID = @USERID_RS AND PALSQNUM BETWEEN @PALSQNUM_RS AND @PALSQNUM_RE AND ( USERID = @USERID AND PALSQNUM > @PALSQNUM OR USERID > @USERID ) ORDER BY USERID ASC, PALSQNUM ASC END ELSE BEGIN SELECT TOP 25  USERID, PALSQNUM, PALPMTNM, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY00400 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PALSQNUM BETWEEN @PALSQNUM_RS AND @PALSQNUM_RE AND ( USERID = @USERID AND PALSQNUM > @PALSQNUM OR USERID > @USERID ) ORDER BY USERID ASC, PALSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00400N_2] TO [DYNGRP]
GO
