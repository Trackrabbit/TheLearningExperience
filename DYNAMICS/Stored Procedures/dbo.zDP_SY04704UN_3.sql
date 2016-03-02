SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04704UN_3] (@BS int, @SERVERID char(81), @SERVERID_RS char(81), @SERVERID_RE char(81)) AS  set nocount on IF @SERVERID_RS IS NULL BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE ( SERVERID > @SERVERID ) ORDER BY SERVERID ASC, DEX_ROW_ID ASC END ELSE IF @SERVERID_RS = @SERVERID_RE BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVERID = @SERVERID_RS AND ( SERVERID > @SERVERID ) ORDER BY SERVERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE AND ( SERVERID > @SERVERID ) ORDER BY SERVERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04704UN_3] TO [DYNGRP]
GO
