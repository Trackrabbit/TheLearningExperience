SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80905L_1] (@USERID_RS char(15), @DOCTYPE_RS smallint, @DOCNUMBR_RS char(21), @VCHRNMBR_RS char(21), @USERID_RE char(15), @DOCTYPE_RE smallint, @DOCNUMBR_RE char(21), @VCHRNMBR_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, VCHRNMBR, DOCNUMBR, DOCTYPE, DEX_ROW_ID FROM .PM80905 ORDER BY USERID DESC, DOCTYPE DESC, DOCNUMBR DESC, VCHRNMBR DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, VCHRNMBR, DOCNUMBR, DOCTYPE, DEX_ROW_ID FROM .PM80905 WHERE USERID = @USERID_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY USERID DESC, DOCTYPE DESC, DOCNUMBR DESC, VCHRNMBR DESC END ELSE BEGIN SELECT TOP 25  USERID, VCHRNMBR, DOCNUMBR, DOCTYPE, DEX_ROW_ID FROM .PM80905 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY USERID DESC, DOCTYPE DESC, DOCNUMBR DESC, VCHRNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80905L_1] TO [DYNGRP]
GO
