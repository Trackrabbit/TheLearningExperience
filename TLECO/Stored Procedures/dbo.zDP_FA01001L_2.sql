SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01001L_2] (@USERID_RS char(15), @PURGEDATE_RS datetime, @PURGETIME_RS datetime, @USERID_RE char(15), @PURGEDATE_RE datetime, @PURGETIME_RE datetime) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  PURGEDATE, PURGETIME, USERID, RETIRED, RETIREDCNT, DELETED, DELETEDCNT, PARTIALOPEN, PARTIALCNT, PRIORTODATE, DEX_ROW_ID FROM .FA01001 ORDER BY USERID DESC, PURGEDATE DESC, PURGETIME DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  PURGEDATE, PURGETIME, USERID, RETIRED, RETIREDCNT, DELETED, DELETEDCNT, PARTIALOPEN, PARTIALCNT, PRIORTODATE, DEX_ROW_ID FROM .FA01001 WHERE USERID = @USERID_RS AND PURGEDATE BETWEEN @PURGEDATE_RS AND @PURGEDATE_RE AND PURGETIME BETWEEN @PURGETIME_RS AND @PURGETIME_RE ORDER BY USERID DESC, PURGEDATE DESC, PURGETIME DESC END ELSE BEGIN SELECT TOP 25  PURGEDATE, PURGETIME, USERID, RETIRED, RETIREDCNT, DELETED, DELETEDCNT, PARTIALOPEN, PARTIALCNT, PRIORTODATE, DEX_ROW_ID FROM .FA01001 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PURGEDATE BETWEEN @PURGEDATE_RS AND @PURGEDATE_RE AND PURGETIME BETWEEN @PURGETIME_RS AND @PURGETIME_RE ORDER BY USERID DESC, PURGEDATE DESC, PURGETIME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01001L_2] TO [DYNGRP]
GO
