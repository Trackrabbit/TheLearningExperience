SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40501L_1] (@TBLPHYSNM_RS char(51), @TABLTECH_RS char(79), @TBLPHYSNM_RE char(51), @TABLTECH_RE char(79)) AS  set nocount on IF @TBLPHYSNM_RS IS NULL BEGIN SELECT TOP 25  TABLTECH, RULSERIES, TBLPHYSNM, DICTID, DEX_ROW_ID FROM .SY40501 ORDER BY TBLPHYSNM DESC, TABLTECH DESC END ELSE IF @TBLPHYSNM_RS = @TBLPHYSNM_RE BEGIN SELECT TOP 25  TABLTECH, RULSERIES, TBLPHYSNM, DICTID, DEX_ROW_ID FROM .SY40501 WHERE TBLPHYSNM = @TBLPHYSNM_RS AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE ORDER BY TBLPHYSNM DESC, TABLTECH DESC END ELSE BEGIN SELECT TOP 25  TABLTECH, RULSERIES, TBLPHYSNM, DICTID, DEX_ROW_ID FROM .SY40501 WHERE TBLPHYSNM BETWEEN @TBLPHYSNM_RS AND @TBLPHYSNM_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE ORDER BY TBLPHYSNM DESC, TABLTECH DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40501L_1] TO [DYNGRP]
GO