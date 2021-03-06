SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04704N_1] (@BS int, @SERVICEID char(81), @SERVERID char(81), @SERVICEID_RS char(81), @SERVERID_RS char(81), @SERVICEID_RE char(81), @SERVERID_RE char(81)) AS  set nocount on IF @SERVICEID_RS IS NULL BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE ( SERVICEID = @SERVICEID AND SERVERID > @SERVERID OR SERVICEID > @SERVICEID ) ORDER BY SERVICEID ASC, SERVERID ASC END ELSE IF @SERVICEID_RS = @SERVICEID_RE BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVICEID = @SERVICEID_RS AND SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE AND ( SERVICEID = @SERVICEID AND SERVERID > @SERVERID OR SERVICEID > @SERVICEID ) ORDER BY SERVICEID ASC, SERVERID ASC END ELSE BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVICEID BETWEEN @SERVICEID_RS AND @SERVICEID_RE AND SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE AND ( SERVICEID = @SERVICEID AND SERVERID > @SERVERID OR SERVICEID > @SERVICEID ) ORDER BY SERVICEID ASC, SERVERID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04704N_1] TO [DYNGRP]
GO
