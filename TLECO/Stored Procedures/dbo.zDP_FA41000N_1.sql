SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41000N_1] (@BS int, @QUARTERINDX int, @QUARTERINDX_RS int, @QUARTERINDX_RE int) AS  set nocount on IF @QUARTERINDX_RS IS NULL BEGIN SELECT TOP 25  QUARTERINDX, YEAR1, QUARTERID, QUARTERSTARTDATE, QUARTERENDDATE, QUARTERMIDDATE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, CALNDRID, DEX_ROW_ID FROM .FA41000 WHERE ( QUARTERINDX > @QUARTERINDX ) ORDER BY QUARTERINDX ASC END ELSE IF @QUARTERINDX_RS = @QUARTERINDX_RE BEGIN SELECT TOP 25  QUARTERINDX, YEAR1, QUARTERID, QUARTERSTARTDATE, QUARTERENDDATE, QUARTERMIDDATE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, CALNDRID, DEX_ROW_ID FROM .FA41000 WHERE QUARTERINDX = @QUARTERINDX_RS AND ( QUARTERINDX > @QUARTERINDX ) ORDER BY QUARTERINDX ASC END ELSE BEGIN SELECT TOP 25  QUARTERINDX, YEAR1, QUARTERID, QUARTERSTARTDATE, QUARTERENDDATE, QUARTERMIDDATE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, CALNDRID, DEX_ROW_ID FROM .FA41000 WHERE QUARTERINDX BETWEEN @QUARTERINDX_RS AND @QUARTERINDX_RE AND ( QUARTERINDX > @QUARTERINDX ) ORDER BY QUARTERINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41000N_1] TO [DYNGRP]
GO
