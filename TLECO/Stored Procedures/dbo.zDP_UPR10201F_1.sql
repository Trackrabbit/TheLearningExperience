SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10201F_1] (@USERID_RS char(15), @PYRLRTYP_RS smallint, @PAYROLCD_RS char(7), @USERID_RE char(15), @PYRLRTYP_RE smallint, @PAYROLCD_RE char(7)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR10201 ORDER BY USERID ASC, PYRLRTYP ASC, PAYROLCD ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR10201 WHERE USERID = @USERID_RS AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY USERID ASC, PYRLRTYP ASC, PAYROLCD ASC END ELSE BEGIN SELECT TOP 25  USERID, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR10201 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY USERID ASC, PYRLRTYP ASC, PAYROLCD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10201F_1] TO [DYNGRP]
GO
