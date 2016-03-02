SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40500N_1] (@BS int, @MSTRNUMB int, @MSTRNUMB_RS int, @MSTRNUMB_RE int) AS  set nocount on IF @MSTRNUMB_RS IS NULL BEGIN SELECT TOP 25  MSTRNUMB, DEX_ROW_ID FROM .SOP40500 WHERE ( MSTRNUMB > @MSTRNUMB ) ORDER BY MSTRNUMB ASC END ELSE IF @MSTRNUMB_RS = @MSTRNUMB_RE BEGIN SELECT TOP 25  MSTRNUMB, DEX_ROW_ID FROM .SOP40500 WHERE MSTRNUMB = @MSTRNUMB_RS AND ( MSTRNUMB > @MSTRNUMB ) ORDER BY MSTRNUMB ASC END ELSE BEGIN SELECT TOP 25  MSTRNUMB, DEX_ROW_ID FROM .SOP40500 WHERE MSTRNUMB BETWEEN @MSTRNUMB_RS AND @MSTRNUMB_RE AND ( MSTRNUMB > @MSTRNUMB ) ORDER BY MSTRNUMB ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40500N_1] TO [DYNGRP]
GO