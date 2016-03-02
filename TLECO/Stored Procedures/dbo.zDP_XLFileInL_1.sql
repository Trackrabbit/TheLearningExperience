SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_XLFileInL_1] (@FILEIDX_RS int, @FILEIDX_RE int) AS  set nocount on IF @FILEIDX_RS IS NULL BEGIN SELECT TOP 25  FILEIDX, BUDGETID, fileName, Worksht, DEX_ROW_ID FROM .XLFileIn ORDER BY FILEIDX DESC END ELSE IF @FILEIDX_RS = @FILEIDX_RE BEGIN SELECT TOP 25  FILEIDX, BUDGETID, fileName, Worksht, DEX_ROW_ID FROM .XLFileIn WHERE FILEIDX = @FILEIDX_RS ORDER BY FILEIDX DESC END ELSE BEGIN SELECT TOP 25  FILEIDX, BUDGETID, fileName, Worksht, DEX_ROW_ID FROM .XLFileIn WHERE FILEIDX BETWEEN @FILEIDX_RS AND @FILEIDX_RE ORDER BY FILEIDX DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_XLFileInL_1] TO [DYNGRP]
GO