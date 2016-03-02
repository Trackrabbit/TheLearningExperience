SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10216L_1] (@USERID_RS char(15), @CHEKNMBR_RS char(21), @USERID_RE char(15), @CHEKNMBR_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 ORDER BY USERID DESC, CHEKNMBR DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 WHERE USERID = @USERID_RS AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE ORDER BY USERID DESC, CHEKNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE ORDER BY USERID DESC, CHEKNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10216L_1] TO [DYNGRP]
GO
