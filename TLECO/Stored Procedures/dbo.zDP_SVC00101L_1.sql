SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00101L_1] (@TECHID_RS char(11), @STRTDATE_RS datetime, @TECHID_RE char(11), @STRTDATE_RE datetime) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2, DEX_ROW_ID FROM .SVC00101 ORDER BY TECHID DESC, STRTDATE ASC, DEX_ROW_ID DESC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2, DEX_ROW_ID FROM .SVC00101 WHERE TECHID = @TECHID_RS AND STRTDATE BETWEEN @STRTDATE_RE AND @STRTDATE_RS ORDER BY TECHID DESC, STRTDATE ASC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2, DEX_ROW_ID FROM .SVC00101 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND STRTDATE BETWEEN @STRTDATE_RE AND @STRTDATE_RS ORDER BY TECHID DESC, STRTDATE ASC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00101L_1] TO [DYNGRP]
GO
