SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD00200L_3] (@DEDNMTHD_RS smallint, @EMPLOYID_RS char(15), @INDXLONG_RS int, @DEDNMTHD_RE smallint, @EMPLOYID_RE char(15), @INDXLONG_RE int) AS  set nocount on IF @DEDNMTHD_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 ORDER BY DEDNMTHD DESC, EMPLOYID DESC, INDXLONG DESC END ELSE IF @DEDNMTHD_RS = @DEDNMTHD_RE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE DEDNMTHD = @DEDNMTHD_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY DEDNMTHD DESC, EMPLOYID DESC, INDXLONG DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE DEDNMTHD BETWEEN @DEDNMTHD_RS AND @DEDNMTHD_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY DEDNMTHD DESC, EMPLOYID DESC, INDXLONG DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD00200L_3] TO [DYNGRP]
GO