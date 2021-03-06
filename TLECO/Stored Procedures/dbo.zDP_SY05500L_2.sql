SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY05500L_2] (@TBLPHYSNM_RS char(51), @PRODTCOD_RS char(1), @USERID_RS char(15), @TBLPHYSNM_RE char(51), @PRODTCOD_RE char(1), @USERID_RE char(15)) AS  set nocount on IF @TBLPHYSNM_RS IS NULL BEGIN SELECT TOP 25  TBLPHYSNM, DOCCODE, PRODTCOD, USERID, DEX_ROW_ID FROM .SY05500 ORDER BY TBLPHYSNM DESC, PRODTCOD DESC, USERID DESC END ELSE IF @TBLPHYSNM_RS = @TBLPHYSNM_RE BEGIN SELECT TOP 25  TBLPHYSNM, DOCCODE, PRODTCOD, USERID, DEX_ROW_ID FROM .SY05500 WHERE TBLPHYSNM = @TBLPHYSNM_RS AND PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY TBLPHYSNM DESC, PRODTCOD DESC, USERID DESC END ELSE BEGIN SELECT TOP 25  TBLPHYSNM, DOCCODE, PRODTCOD, USERID, DEX_ROW_ID FROM .SY05500 WHERE TBLPHYSNM BETWEEN @TBLPHYSNM_RS AND @TBLPHYSNM_RE AND PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY TBLPHYSNM DESC, PRODTCOD DESC, USERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05500L_2] TO [DYNGRP]
GO
