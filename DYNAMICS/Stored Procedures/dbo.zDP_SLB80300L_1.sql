SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB80300L_1] (@SERVERID_RS char(81), @SQL_Database_Name_RS char(81), @SERVERID_RE char(81), @SQL_Database_Name_RE char(81)) AS set nocount on IF @SERVERID_RS IS NULL BEGIN SELECT TOP 25  SERVERID, SQL_Database_Name, DEX_ROW_ID FROM .SLB80300 ORDER BY SERVERID DESC, SQL_Database_Name DESC END ELSE IF @SERVERID_RS = @SERVERID_RE BEGIN SELECT TOP 25  SERVERID, SQL_Database_Name, DEX_ROW_ID FROM .SLB80300 WHERE SERVERID = @SERVERID_RS AND SQL_Database_Name BETWEEN @SQL_Database_Name_RS AND @SQL_Database_Name_RE ORDER BY SERVERID DESC, SQL_Database_Name DESC END ELSE BEGIN SELECT TOP 25  SERVERID, SQL_Database_Name, DEX_ROW_ID FROM .SLB80300 WHERE SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE AND SQL_Database_Name BETWEEN @SQL_Database_Name_RS AND @SQL_Database_Name_RE ORDER BY SERVERID DESC, SQL_Database_Name DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB80300L_1] TO [DYNGRP]
GO
