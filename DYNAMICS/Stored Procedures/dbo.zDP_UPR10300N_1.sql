SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10300N_1] (@BS int, @CMPANYID smallint, @USERID char(15), @PYRLACTV char(7), @CMPANYID_RS smallint, @USERID_RS char(15), @PYRLACTV_RS char(7), @CMPANYID_RE smallint, @USERID_RE char(15), @PYRLACTV_RE char(7)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, USERID, PYRLACTV, DEX_ROW_ID FROM .UPR10300 WHERE ( CMPANYID = @CMPANYID AND USERID = @USERID AND PYRLACTV > @PYRLACTV OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, PYRLACTV ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, USERID, PYRLACTV, DEX_ROW_ID FROM .UPR10300 WHERE CMPANYID = @CMPANYID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRLACTV BETWEEN @PYRLACTV_RS AND @PYRLACTV_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND PYRLACTV > @PYRLACTV OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, PYRLACTV ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, USERID, PYRLACTV, DEX_ROW_ID FROM .UPR10300 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRLACTV BETWEEN @PYRLACTV_RS AND @PYRLACTV_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND PYRLACTV > @PYRLACTV OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, PYRLACTV ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10300N_1] TO [DYNGRP]
GO