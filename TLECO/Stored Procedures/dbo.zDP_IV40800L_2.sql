SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40800L_2] (@DSCRIPTN_RS char(31), @PRCLEVEL_RS char(11), @DSCRIPTN_RE char(31), @PRCLEVEL_RE char(11)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 ORDER BY DSCRIPTN DESC, PRCLEVEL DESC, DEX_ROW_ID DESC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE DSCRIPTN = @DSCRIPTN_RS AND PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE ORDER BY DSCRIPTN DESC, PRCLEVEL DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE ORDER BY DSCRIPTN DESC, PRCLEVEL DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40800L_2] TO [DYNGRP]
GO