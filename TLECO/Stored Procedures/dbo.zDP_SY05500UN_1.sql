SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY05500UN_1] (@BS int, @TBLPHYSNM char(51), @DOCCODE char(51), @PRODTCOD char(1), @TBLPHYSNM_RS char(51), @DOCCODE_RS char(51), @PRODTCOD_RS char(1), @TBLPHYSNM_RE char(51), @DOCCODE_RE char(51), @PRODTCOD_RE char(1)) AS  set nocount on IF @TBLPHYSNM_RS IS NULL BEGIN SELECT TOP 25  TBLPHYSNM, DOCCODE, PRODTCOD, USERID, DEX_ROW_ID FROM .SY05500 WHERE ( TBLPHYSNM = @TBLPHYSNM AND DOCCODE = @DOCCODE AND PRODTCOD > @PRODTCOD OR TBLPHYSNM = @TBLPHYSNM AND DOCCODE > @DOCCODE OR TBLPHYSNM > @TBLPHYSNM ) ORDER BY TBLPHYSNM ASC, DOCCODE ASC, PRODTCOD ASC, DEX_ROW_ID ASC END ELSE IF @TBLPHYSNM_RS = @TBLPHYSNM_RE BEGIN SELECT TOP 25  TBLPHYSNM, DOCCODE, PRODTCOD, USERID, DEX_ROW_ID FROM .SY05500 WHERE TBLPHYSNM = @TBLPHYSNM_RS AND DOCCODE BETWEEN @DOCCODE_RS AND @DOCCODE_RE AND PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND ( TBLPHYSNM = @TBLPHYSNM AND DOCCODE = @DOCCODE AND PRODTCOD > @PRODTCOD OR TBLPHYSNM = @TBLPHYSNM AND DOCCODE > @DOCCODE OR TBLPHYSNM > @TBLPHYSNM ) ORDER BY TBLPHYSNM ASC, DOCCODE ASC, PRODTCOD ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TBLPHYSNM, DOCCODE, PRODTCOD, USERID, DEX_ROW_ID FROM .SY05500 WHERE TBLPHYSNM BETWEEN @TBLPHYSNM_RS AND @TBLPHYSNM_RE AND DOCCODE BETWEEN @DOCCODE_RS AND @DOCCODE_RE AND PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND ( TBLPHYSNM = @TBLPHYSNM AND DOCCODE = @DOCCODE AND PRODTCOD > @PRODTCOD OR TBLPHYSNM = @TBLPHYSNM AND DOCCODE > @DOCCODE OR TBLPHYSNM > @TBLPHYSNM ) ORDER BY TBLPHYSNM ASC, DOCCODE ASC, PRODTCOD ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05500UN_1] TO [DYNGRP]
GO
