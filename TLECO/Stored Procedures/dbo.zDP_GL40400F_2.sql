SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40400F_2] (@MODULE1_RS smallint, @ACTINDX_RS int, @MODULE1_RE smallint, @ACTINDX_RE int) AS  set nocount on IF @MODULE1_RS IS NULL BEGIN SELECT TOP 25  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 ORDER BY MODULE1 ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @MODULE1_RS = @MODULE1_RE BEGIN SELECT TOP 25  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 WHERE MODULE1 = @MODULE1_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY MODULE1 ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 WHERE MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY MODULE1 ASC, ACTINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40400F_2] TO [DYNGRP]
GO
