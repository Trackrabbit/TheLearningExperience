SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE000300N_1] (@BS int, @SEOPTNME char(21), @SEOPTNME_RS char(21), @SEOPTNME_RE char(21)) AS  set nocount on IF @SEOPTNME_RS IS NULL BEGIN SELECT TOP 25  SEOPTNME, SERESCNT, SESORNO1, USEACCEL, SENOCOLM, Accounts_Included, DEX_ROW_ID FROM .SE000300 WHERE ( SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC END ELSE IF @SEOPTNME_RS = @SEOPTNME_RE BEGIN SELECT TOP 25  SEOPTNME, SERESCNT, SESORNO1, USEACCEL, SENOCOLM, Accounts_Included, DEX_ROW_ID FROM .SE000300 WHERE SEOPTNME = @SEOPTNME_RS AND ( SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC END ELSE BEGIN SELECT TOP 25  SEOPTNME, SERESCNT, SESORNO1, USEACCEL, SENOCOLM, Accounts_Included, DEX_ROW_ID FROM .SE000300 WHERE SEOPTNME BETWEEN @SEOPTNME_RS AND @SEOPTNME_RE AND ( SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000300N_1] TO [DYNGRP]
GO
