SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV030121N_2] (@BS int, @REVWORDSETPNAM_I char(15), @REVWORDSETPNAM_I_RS char(15), @REVWORDSETPNAM_I_RE char(15)) AS  set nocount on IF @REVWORDSETPNAM_I_RS IS NULL BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE ( REVWORDSETPNAM_I > @REVWORDSETPNAM_I ) ORDER BY REVWORDSETPNAM_I ASC END ELSE IF @REVWORDSETPNAM_I_RS = @REVWORDSETPNAM_I_RE BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE REVWORDSETPNAM_I = @REVWORDSETPNAM_I_RS AND ( REVWORDSETPNAM_I > @REVWORDSETPNAM_I ) ORDER BY REVWORDSETPNAM_I ASC END ELSE BEGIN SELECT TOP 25  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE REVWORDSETPNAM_I BETWEEN @REVWORDSETPNAM_I_RS AND @REVWORDSETPNAM_I_RE AND ( REVWORDSETPNAM_I > @REVWORDSETPNAM_I ) ORDER BY REVWORDSETPNAM_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV030121N_2] TO [DYNGRP]
GO
