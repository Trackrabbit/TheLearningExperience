SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00900F_1] (@SOURCDOC_RS char(11), @SOURCDOC_RE char(11)) AS  set nocount on IF @SOURCDOC_RS IS NULL BEGIN SELECT TOP 25  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 ORDER BY SOURCDOC ASC END ELSE IF @SOURCDOC_RS = @SOURCDOC_RE BEGIN SELECT TOP 25  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 WHERE SOURCDOC = @SOURCDOC_RS ORDER BY SOURCDOC ASC END ELSE BEGIN SELECT TOP 25  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 WHERE SOURCDOC BETWEEN @SOURCDOC_RS AND @SOURCDOC_RE ORDER BY SOURCDOC ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00900F_1] TO [DYNGRP]
GO
