SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_XLActInfUN_2] (@BS int, @FILEIDX int, @FILEIDX_RS int, @FILEIDX_RE int) AS  set nocount on IF @FILEIDX_RS IS NULL BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ( FILEIDX > @FILEIDX ) ORDER BY FILEIDX ASC, DEX_ROW_ID ASC END ELSE IF @FILEIDX_RS = @FILEIDX_RE BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE FILEIDX = @FILEIDX_RS AND ( FILEIDX > @FILEIDX ) ORDER BY FILEIDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE FILEIDX BETWEEN @FILEIDX_RS AND @FILEIDX_RE AND ( FILEIDX > @FILEIDX ) ORDER BY FILEIDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_XLActInfUN_2] TO [DYNGRP]
GO
