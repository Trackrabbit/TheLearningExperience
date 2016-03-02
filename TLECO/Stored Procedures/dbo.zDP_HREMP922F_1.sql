SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HREMP922F_1] (@USERID_RS char(15), @ORGANIZATIONLEVEL_I_RS smallint, @CODE_I_RS char(7), @USERID_RE char(15), @ORGANIZATIONLEVEL_I_RE smallint, @CODE_I_RE char(7)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ORGANIZATIONLEVEL_I, CODE_I, DEX_ROW_ID FROM .HREMP922 ORDER BY USERID ASC, ORGANIZATIONLEVEL_I ASC, CODE_I ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ORGANIZATIONLEVEL_I, CODE_I, DEX_ROW_ID FROM .HREMP922 WHERE USERID = @USERID_RS AND ORGANIZATIONLEVEL_I BETWEEN @ORGANIZATIONLEVEL_I_RS AND @ORGANIZATIONLEVEL_I_RE AND CODE_I BETWEEN @CODE_I_RS AND @CODE_I_RE ORDER BY USERID ASC, ORGANIZATIONLEVEL_I ASC, CODE_I ASC END ELSE BEGIN SELECT TOP 25  USERID, ORGANIZATIONLEVEL_I, CODE_I, DEX_ROW_ID FROM .HREMP922 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ORGANIZATIONLEVEL_I BETWEEN @ORGANIZATIONLEVEL_I_RS AND @ORGANIZATIONLEVEL_I_RE AND CODE_I BETWEEN @CODE_I_RS AND @CODE_I_RE ORDER BY USERID ASC, ORGANIZATIONLEVEL_I ASC, CODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HREMP922F_1] TO [DYNGRP]
GO
