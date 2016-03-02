SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10300F_2] (@CMPANYID_RS smallint, @PYRLACTV_RS char(7), @CMPANYID_RE smallint, @PYRLACTV_RE char(7)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, USERID, PYRLACTV, DEX_ROW_ID FROM .UPR10300 ORDER BY CMPANYID ASC, PYRLACTV ASC, DEX_ROW_ID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, USERID, PYRLACTV, DEX_ROW_ID FROM .UPR10300 WHERE CMPANYID = @CMPANYID_RS AND PYRLACTV BETWEEN @PYRLACTV_RS AND @PYRLACTV_RE ORDER BY CMPANYID ASC, PYRLACTV ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, USERID, PYRLACTV, DEX_ROW_ID FROM .UPR10300 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND PYRLACTV BETWEEN @PYRLACTV_RS AND @PYRLACTV_RE ORDER BY CMPANYID ASC, PYRLACTV ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10300F_2] TO [DYNGRP]
GO
