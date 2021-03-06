SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20600UN_6] (@BS int, @CMXFRNUM char(21), @CMXFRNUM_RS char(21), @CMXFRNUM_RE char(21)) AS  set nocount on IF @CMXFRNUM_RS IS NULL BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE ( CMXFRNUM > @CMXFRNUM ) ORDER BY CMXFRNUM ASC, DEX_ROW_ID ASC END ELSE IF @CMXFRNUM_RS = @CMXFRNUM_RE BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE CMXFRNUM = @CMXFRNUM_RS AND ( CMXFRNUM > @CMXFRNUM ) ORDER BY CMXFRNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE CMXFRNUM BETWEEN @CMXFRNUM_RS AND @CMXFRNUM_RE AND ( CMXFRNUM > @CMXFRNUM ) ORDER BY CMXFRNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20600UN_6] TO [DYNGRP]
GO
