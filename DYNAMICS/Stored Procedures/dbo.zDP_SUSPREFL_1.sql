SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SUSPREFL_1] (@IINDEX_I_RS smallint, @IINDEX_I_RE smallint) AS  set nocount on IF @IINDEX_I_RS IS NULL BEGIN SELECT TOP 25  IINDEX_I, POINTS_I, DEX_ROW_ID FROM .SUSPREF ORDER BY IINDEX_I DESC END ELSE IF @IINDEX_I_RS = @IINDEX_I_RE BEGIN SELECT TOP 25  IINDEX_I, POINTS_I, DEX_ROW_ID FROM .SUSPREF WHERE IINDEX_I = @IINDEX_I_RS ORDER BY IINDEX_I DESC END ELSE BEGIN SELECT TOP 25  IINDEX_I, POINTS_I, DEX_ROW_ID FROM .SUSPREF WHERE IINDEX_I BETWEEN @IINDEX_I_RS AND @IINDEX_I_RE ORDER BY IINDEX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SUSPREFL_1] TO [DYNGRP]
GO
