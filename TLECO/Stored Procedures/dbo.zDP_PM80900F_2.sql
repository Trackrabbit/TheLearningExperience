SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80900F_2] (@USERID_RS char(15), @INDEX1_RS smallint, @DOCTYPE_RS smallint, @ID_RS char(21), @USERID_RE char(15), @INDEX1_RE smallint, @DOCTYPE_RE smallint, @ID_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 ORDER BY USERID ASC, INDEX1 ASC, DOCTYPE ASC, ID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 WHERE USERID = @USERID_RS AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ID BETWEEN @ID_RS AND @ID_RE ORDER BY USERID ASC, INDEX1 ASC, DOCTYPE ASC, ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ID BETWEEN @ID_RS AND @ID_RE ORDER BY USERID ASC, INDEX1 ASC, DOCTYPE ASC, ID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80900F_2] TO [DYNGRP]
GO
