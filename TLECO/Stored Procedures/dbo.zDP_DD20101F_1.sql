SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD20101F_1] (@EMPLOYID_RS char(15), @INDXLONG_RS int, @EMPLOYID_RE char(15), @INDXLONG_RE int) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD20101 ORDER BY EMPLOYID ASC, INDXLONG ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD20101 WHERE EMPLOYID = @EMPLOYID_RS AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY EMPLOYID ASC, INDXLONG ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD20101 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY EMPLOYID ASC, INDXLONG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD20101F_1] TO [DYNGRP]
GO
