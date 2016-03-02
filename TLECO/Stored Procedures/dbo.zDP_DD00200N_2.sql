SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD00200N_2] (@BS int, @DDTRANS char(3), @EMPLOYID char(15), @INDXLONG int, @DDTRANS_RS char(3), @EMPLOYID_RS char(15), @INDXLONG_RS int, @DDTRANS_RE char(3), @EMPLOYID_RE char(15), @INDXLONG_RE int) AS  set nocount on IF @DDTRANS_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE ( DDTRANS = @DDTRANS AND EMPLOYID = @EMPLOYID AND INDXLONG > @INDXLONG OR DDTRANS = @DDTRANS AND EMPLOYID > @EMPLOYID OR DDTRANS > @DDTRANS ) ORDER BY DDTRANS ASC, EMPLOYID ASC, INDXLONG ASC END ELSE IF @DDTRANS_RS = @DDTRANS_RE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE DDTRANS = @DDTRANS_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND ( DDTRANS = @DDTRANS AND EMPLOYID = @EMPLOYID AND INDXLONG > @INDXLONG OR DDTRANS = @DDTRANS AND EMPLOYID > @EMPLOYID OR DDTRANS > @DDTRANS ) ORDER BY DDTRANS ASC, EMPLOYID ASC, INDXLONG ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS, DEX_ROW_ID FROM .DD00200 WHERE DDTRANS BETWEEN @DDTRANS_RS AND @DDTRANS_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND ( DDTRANS = @DDTRANS AND EMPLOYID = @EMPLOYID AND INDXLONG > @INDXLONG OR DDTRANS = @DDTRANS AND EMPLOYID > @EMPLOYID OR DDTRANS > @DDTRANS ) ORDER BY DDTRANS ASC, EMPLOYID ASC, INDXLONG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD00200N_2] TO [DYNGRP]
GO
