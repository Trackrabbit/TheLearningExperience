SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04701L_1] (@SERVERID_RS char(81), @SERVERID_RE char(81)) AS  set nocount on IF @SERVERID_RS IS NULL BEGIN SELECT TOP 25  SERVERID, DEX_ROW_ID FROM .SY04701 ORDER BY SERVERID DESC END ELSE IF @SERVERID_RS = @SERVERID_RE BEGIN SELECT TOP 25  SERVERID, DEX_ROW_ID FROM .SY04701 WHERE SERVERID = @SERVERID_RS ORDER BY SERVERID DESC END ELSE BEGIN SELECT TOP 25  SERVERID, DEX_ROW_ID FROM .SY04701 WHERE SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE ORDER BY SERVERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04701L_1] TO [DYNGRP]
GO
