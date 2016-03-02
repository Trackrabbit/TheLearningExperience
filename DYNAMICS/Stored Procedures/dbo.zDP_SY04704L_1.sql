SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04704L_1] (@SERVICEID_RS char(81), @SERVERID_RS char(81), @SERVICEID_RE char(81), @SERVERID_RE char(81)) AS  set nocount on IF @SERVICEID_RS IS NULL BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 ORDER BY SERVICEID DESC, SERVERID DESC END ELSE IF @SERVICEID_RS = @SERVICEID_RE BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVICEID = @SERVICEID_RS AND SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE ORDER BY SERVICEID DESC, SERVERID DESC END ELSE BEGIN SELECT TOP 25  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVICEID BETWEEN @SERVICEID_RS AND @SERVICEID_RE AND SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE ORDER BY SERVICEID DESC, SERVERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04704L_1] TO [DYNGRP]
GO
