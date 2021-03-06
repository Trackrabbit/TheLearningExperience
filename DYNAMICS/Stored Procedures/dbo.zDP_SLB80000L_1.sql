SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB80000L_1] (@RCRDTYPE_RS smallint, @USERID_RS char(15), @Security_Role_RS smallint, @RCRDTYPE_RE smallint, @USERID_RE char(15), @Security_Role_RE smallint) AS set nocount on IF @RCRDTYPE_RS IS NULL BEGIN SELECT TOP 25  RCRDTYPE, USERID, Security_Role, ENABLED, DEX_ROW_ID FROM .SLB80000 ORDER BY RCRDTYPE DESC, USERID DESC, Security_Role DESC END ELSE IF @RCRDTYPE_RS = @RCRDTYPE_RE BEGIN SELECT TOP 25  RCRDTYPE, USERID, Security_Role, ENABLED, DEX_ROW_ID FROM .SLB80000 WHERE RCRDTYPE = @RCRDTYPE_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND Security_Role BETWEEN @Security_Role_RS AND @Security_Role_RE ORDER BY RCRDTYPE DESC, USERID DESC, Security_Role DESC END ELSE BEGIN SELECT TOP 25  RCRDTYPE, USERID, Security_Role, ENABLED, DEX_ROW_ID FROM .SLB80000 WHERE RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND Security_Role BETWEEN @Security_Role_RS AND @Security_Role_RE ORDER BY RCRDTYPE DESC, USERID DESC, Security_Role DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB80000L_1] TO [DYNGRP]
GO
