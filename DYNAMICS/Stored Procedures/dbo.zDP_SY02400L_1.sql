SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02400L_1] (@DMYPWDID_RS smallint, @DMYPWDID_RE smallint) AS  set nocount on IF @DMYPWDID_RS IS NULL BEGIN SELECT TOP 25  DMYPWDID, PASSWORD, DEX_ROW_ID FROM .SY02400 ORDER BY DMYPWDID DESC END ELSE IF @DMYPWDID_RS = @DMYPWDID_RE BEGIN SELECT TOP 25  DMYPWDID, PASSWORD, DEX_ROW_ID FROM .SY02400 WHERE DMYPWDID = @DMYPWDID_RS ORDER BY DMYPWDID DESC END ELSE BEGIN SELECT TOP 25  DMYPWDID, PASSWORD, DEX_ROW_ID FROM .SY02400 WHERE DMYPWDID BETWEEN @DMYPWDID_RS AND @DMYPWDID_RE ORDER BY DMYPWDID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02400L_1] TO [DYNGRP]
GO
