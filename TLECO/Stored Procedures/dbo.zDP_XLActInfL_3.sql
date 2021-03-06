SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_XLActInfL_3] (@ACTINDX_RS int, @ACTINDX_RE int) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf ORDER BY ACTINDX DESC, DEX_ROW_ID DESC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ACTINDX = @ACTINDX_RS ORDER BY ACTINDX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY ACTINDX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_XLActInfL_3] TO [DYNGRP]
GO
