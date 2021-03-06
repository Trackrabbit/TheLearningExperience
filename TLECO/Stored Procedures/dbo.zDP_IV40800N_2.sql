SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40800N_2] (@BS int, @DSCRIPTN char(31), @PRCLEVEL char(11), @DEX_ROW_ID int, @DSCRIPTN_RS char(31), @PRCLEVEL_RS char(11), @DSCRIPTN_RE char(31), @PRCLEVEL_RE char(11)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE ( DSCRIPTN = @DSCRIPTN AND PRCLEVEL = @PRCLEVEL AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND PRCLEVEL > @PRCLEVEL OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, PRCLEVEL ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE DSCRIPTN = @DSCRIPTN_RS AND PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE AND ( DSCRIPTN = @DSCRIPTN AND PRCLEVEL = @PRCLEVEL AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND PRCLEVEL > @PRCLEVEL OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, PRCLEVEL ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRCLEVEL, DSCRIPTN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_TS, DEX_ROW_ID FROM .IV40800 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND PRCLEVEL BETWEEN @PRCLEVEL_RS AND @PRCLEVEL_RE AND ( DSCRIPTN = @DSCRIPTN AND PRCLEVEL = @PRCLEVEL AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND PRCLEVEL > @PRCLEVEL OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, PRCLEVEL ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40800N_2] TO [DYNGRP]
GO
