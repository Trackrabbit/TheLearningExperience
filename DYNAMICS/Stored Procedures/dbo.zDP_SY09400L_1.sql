SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY09400L_1] (@DICTID_RS smallint, @SECRESTYPE_RS smallint, @SECURITYID_RS int, @DICTID_RE smallint, @SECRESTYPE_RE smallint, @SECURITYID_RE int) AS  set nocount on IF @DICTID_RS IS NULL BEGIN SELECT TOP 25  DICTID, PRODNAME, SECRESTYPE, TYPESTR, SECURITYID, RESTECHNAME, DSPLNAME, SERIES, Series_Name, AvailLmtdUsrs, DEX_ROW_ID FROM .SY09400 ORDER BY DICTID DESC, SECRESTYPE DESC, SECURITYID DESC END ELSE IF @DICTID_RS = @DICTID_RE BEGIN SELECT TOP 25  DICTID, PRODNAME, SECRESTYPE, TYPESTR, SECURITYID, RESTECHNAME, DSPLNAME, SERIES, Series_Name, AvailLmtdUsrs, DEX_ROW_ID FROM .SY09400 WHERE DICTID = @DICTID_RS AND SECRESTYPE BETWEEN @SECRESTYPE_RS AND @SECRESTYPE_RE AND SECURITYID BETWEEN @SECURITYID_RS AND @SECURITYID_RE ORDER BY DICTID DESC, SECRESTYPE DESC, SECURITYID DESC END ELSE BEGIN SELECT TOP 25  DICTID, PRODNAME, SECRESTYPE, TYPESTR, SECURITYID, RESTECHNAME, DSPLNAME, SERIES, Series_Name, AvailLmtdUsrs, DEX_ROW_ID FROM .SY09400 WHERE DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND SECRESTYPE BETWEEN @SECRESTYPE_RS AND @SECRESTYPE_RE AND SECURITYID BETWEEN @SECURITYID_RS AND @SECURITYID_RE ORDER BY DICTID DESC, SECRESTYPE DESC, SECURITYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY09400L_1] TO [DYNGRP]
GO