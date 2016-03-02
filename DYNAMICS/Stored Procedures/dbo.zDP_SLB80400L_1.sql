SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB80400L_1] (@SERVERID_RS char(81), @SQL_Database_Name_RS char(81), @TBLPHYSNM_RS char(51), @SERVERID_RE char(81), @SQL_Database_Name_RE char(81), @TBLPHYSNM_RE char(51)) AS set nocount on IF @SERVERID_RS IS NULL BEGIN SELECT TOP 25  SERVERID, SQL_Database_Name, TBLPHYSNM, Object_Type, DEX_ROW_ID FROM .SLB80400 ORDER BY SERVERID DESC, SQL_Database_Name DESC, TBLPHYSNM DESC END ELSE IF @SERVERID_RS = @SERVERID_RE BEGIN SELECT TOP 25  SERVERID, SQL_Database_Name, TBLPHYSNM, Object_Type, DEX_ROW_ID FROM .SLB80400 WHERE SERVERID = @SERVERID_RS AND SQL_Database_Name BETWEEN @SQL_Database_Name_RS AND @SQL_Database_Name_RE AND TBLPHYSNM BETWEEN @TBLPHYSNM_RS AND @TBLPHYSNM_RE ORDER BY SERVERID DESC, SQL_Database_Name DESC, TBLPHYSNM DESC END ELSE BEGIN SELECT TOP 25  SERVERID, SQL_Database_Name, TBLPHYSNM, Object_Type, DEX_ROW_ID FROM .SLB80400 WHERE SERVERID BETWEEN @SERVERID_RS AND @SERVERID_RE AND SQL_Database_Name BETWEEN @SQL_Database_Name_RS AND @SQL_Database_Name_RE AND TBLPHYSNM BETWEEN @TBLPHYSNM_RS AND @TBLPHYSNM_RE ORDER BY SERVERID DESC, SQL_Database_Name DESC, TBLPHYSNM DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB80400L_1] TO [DYNGRP]
GO