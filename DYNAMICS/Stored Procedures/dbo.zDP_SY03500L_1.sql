SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY03500L_1] (@SITENAME_RS char(81), @SITENAME_RE char(81)) AS  set nocount on IF @SITENAME_RS IS NULL BEGIN SELECT TOP 25  SITENAME, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, SiteAccountNumber, DEX_ROW_ID FROM .SY03500 ORDER BY SITENAME DESC END ELSE IF @SITENAME_RS = @SITENAME_RE BEGIN SELECT TOP 25  SITENAME, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, SiteAccountNumber, DEX_ROW_ID FROM .SY03500 WHERE SITENAME = @SITENAME_RS ORDER BY SITENAME DESC END ELSE BEGIN SELECT TOP 25  SITENAME, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, SiteAccountNumber, DEX_ROW_ID FROM .SY03500 WHERE SITENAME BETWEEN @SITENAME_RS AND @SITENAME_RE ORDER BY SITENAME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03500L_1] TO [DYNGRP]
GO