SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV030121L_1] (@REVIEWWORDSETINDEX_I_RS int, @REVIEWWORDSETINDEX_I_RE int) AS  set nocount on IF @REVIEWWORDSETINDEX_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 ORDER BY REVIEWWORDSETINDEX_I DESC END ELSE IF @REVIEWWORDSETINDEX_I_RS = @REVIEWWORDSETINDEX_I_RE BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE REVIEWWORDSETINDEX_I = @REVIEWWORDSETINDEX_I_RS ORDER BY REVIEWWORDSETINDEX_I DESC END ELSE BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE REVIEWWORDSETINDEX_I BETWEEN @REVIEWWORDSETINDEX_I_RS AND @REVIEWWORDSETINDEX_I_RE ORDER BY REVIEWWORDSETINDEX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV030121L_1] TO [DYNGRP]
GO
