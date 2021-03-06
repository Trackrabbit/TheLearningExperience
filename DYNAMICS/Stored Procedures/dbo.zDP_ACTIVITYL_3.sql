SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ACTIVITYL_3] (@LOGINDAT_RS datetime, @CMPNYNAM_RS char(65), @USERID_RS char(15), @ClientUIType_RS smallint, @LOGINDAT_RE datetime, @CMPNYNAM_RE char(65), @USERID_RE char(15), @ClientUIType_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @LOGINDAT_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPNYNAM, ClientUIType, LOGINDAT, LOGINTIM, SQLSESID, Language_ID, ClientType, IsOffline, DEX_ROW_ID FROM .ACTIVITY ORDER BY LOGINDAT DESC, CMPNYNAM DESC, USERID DESC, ClientUIType DESC END ELSE IF @LOGINDAT_RS = @LOGINDAT_RE BEGIN SELECT TOP 25  USERID, CMPNYNAM, ClientUIType, LOGINDAT, LOGINTIM, SQLSESID, Language_ID, ClientType, IsOffline, DEX_ROW_ID FROM .ACTIVITY WHERE LOGINDAT = @LOGINDAT_RS AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ClientUIType BETWEEN @ClientUIType_RS AND @ClientUIType_RE ORDER BY LOGINDAT DESC, CMPNYNAM DESC, USERID DESC, ClientUIType DESC END ELSE BEGIN SELECT TOP 25  USERID, CMPNYNAM, ClientUIType, LOGINDAT, LOGINTIM, SQLSESID, Language_ID, ClientType, IsOffline, DEX_ROW_ID FROM .ACTIVITY WHERE LOGINDAT BETWEEN @LOGINDAT_RS AND @LOGINDAT_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ClientUIType BETWEEN @ClientUIType_RS AND @ClientUIType_RE ORDER BY LOGINDAT DESC, CMPNYNAM DESC, USERID DESC, ClientUIType DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ACTIVITYL_3] TO [DYNGRP]
GO
