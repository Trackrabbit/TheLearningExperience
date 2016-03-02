SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD00200N_4] (@BS int, @DDPRE tinyint, @EMPLOYID char(15), @INDXLONG int, @DDPRE_RS tinyint, @EMPLOYID_RS char(15), @INDXLONG_RS int, @DDPRE_RE tinyint, @EMPLOYID_RE char(15), @INDXLONG_RE int) AS  set nocount on IF @DDPRE_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE ( DDPRE = @DDPRE AND EMPLOYID = @EMPLOYID AND INDXLONG > @INDXLONG OR DDPRE = @DDPRE AND EMPLOYID > @EMPLOYID OR DDPRE > @DDPRE ) ORDER BY DDPRE ASC, EMPLOYID ASC, INDXLONG ASC END ELSE IF @DDPRE_RS = @DDPRE_RE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE DDPRE = @DDPRE_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND ( DDPRE = @DDPRE AND EMPLOYID = @EMPLOYID AND INDXLONG > @INDXLONG OR DDPRE = @DDPRE AND EMPLOYID > @EMPLOYID OR DDPRE > @DDPRE ) ORDER BY DDPRE ASC, EMPLOYID ASC, INDXLONG ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE DDPRE BETWEEN @DDPRE_RS AND @DDPRE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND ( DDPRE = @DDPRE AND EMPLOYID = @EMPLOYID AND INDXLONG > @INDXLONG OR DDPRE = @DDPRE AND EMPLOYID > @EMPLOYID OR DDPRE > @DDPRE ) ORDER BY DDPRE ASC, EMPLOYID ASC, INDXLONG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD00200N_4] TO [DYNGRP]
GO
