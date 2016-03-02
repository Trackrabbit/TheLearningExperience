SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00900F_2] (@SDOCDSCR_RS char(31), @SDOCDSCR_RE char(31)) AS  set nocount on IF @SDOCDSCR_RS IS NULL BEGIN SELECT TOP 25  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 ORDER BY SDOCDSCR ASC, DEX_ROW_ID ASC END ELSE IF @SDOCDSCR_RS = @SDOCDSCR_RE BEGIN SELECT TOP 25  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 WHERE SDOCDSCR = @SDOCDSCR_RS ORDER BY SDOCDSCR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 WHERE SDOCDSCR BETWEEN @SDOCDSCR_RS AND @SDOCDSCR_RE ORDER BY SDOCDSCR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00900F_2] TO [DYNGRP]
GO
