SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80900L_1] (@USERID_RS char(15), @INDEX1_RS smallint, @CURNCYID_RS char(15), @DATE1_RS datetime, @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @USERID_RE char(15), @INDEX1_RE smallint, @CURNCYID_RE char(15), @DATE1_RE datetime, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 ORDER BY USERID DESC, INDEX1 DESC, CURNCYID DESC, DATE1 DESC, VCHRNMBR DESC, DOCTYPE DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 WHERE USERID = @USERID_RS AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY USERID DESC, INDEX1 DESC, CURNCYID DESC, DATE1 DESC, VCHRNMBR DESC, DOCTYPE DESC END ELSE BEGIN SELECT TOP 25  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY USERID DESC, INDEX1 DESC, CURNCYID DESC, DATE1 DESC, VCHRNMBR DESC, DOCTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80900L_1] TO [DYNGRP]
GO
