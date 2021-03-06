SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20600UN_3] (@BS int, @CMXFTDATE datetime, @CMXFRNUM char(21), @CMXFTDATE_RS datetime, @CMXFRNUM_RS char(21), @CMXFTDATE_RE datetime, @CMXFRNUM_RE char(21)) AS  set nocount on IF @CMXFTDATE_RS IS NULL BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE ( CMXFTDATE = @CMXFTDATE AND CMXFRNUM > @CMXFRNUM OR CMXFTDATE > @CMXFTDATE ) ORDER BY CMXFTDATE ASC, CMXFRNUM ASC, DEX_ROW_ID ASC END ELSE IF @CMXFTDATE_RS = @CMXFTDATE_RE BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE CMXFTDATE = @CMXFTDATE_RS AND CMXFRNUM BETWEEN @CMXFRNUM_RS AND @CMXFRNUM_RE AND ( CMXFTDATE = @CMXFTDATE AND CMXFRNUM > @CMXFRNUM OR CMXFTDATE > @CMXFTDATE ) ORDER BY CMXFTDATE ASC, CMXFRNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE CMXFTDATE BETWEEN @CMXFTDATE_RS AND @CMXFTDATE_RE AND CMXFRNUM BETWEEN @CMXFRNUM_RS AND @CMXFRNUM_RE AND ( CMXFTDATE = @CMXFTDATE AND CMXFRNUM > @CMXFRNUM OR CMXFTDATE > @CMXFTDATE ) ORDER BY CMXFTDATE ASC, CMXFRNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20600UN_3] TO [DYNGRP]
GO
