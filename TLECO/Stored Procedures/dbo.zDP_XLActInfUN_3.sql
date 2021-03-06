SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_XLActInfUN_3] (@BS int, @ACTINDX int, @ACTINDX_RS int, @ACTINDX_RE int) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ACTINDX = @ACTINDX_RS AND ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_XLActInfUN_3] TO [DYNGRP]
GO
