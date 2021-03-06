SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40800L_1] (@PRCLEVEL_RS char(11), @PRCLEVEL_RE char(11)) AS  set nocount on IF @PRCLEVEL_RS IS NULL BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 ORDER BY PRCLEVEL DESC END ELSE IF @PRCLEVEL_RS = @PRCLEVEL_RE BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE PRCLEVEL = @PRCLEVEL_RS ORDER BY PRCLEVEL DESC END ELSE BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE ORDER BY PRCLEVEL DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40800L_1] TO [DYNGRP]
GO
