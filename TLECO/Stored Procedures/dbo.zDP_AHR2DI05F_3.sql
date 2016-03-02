SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2DI05F_3] (@DATEFILED_I_RS datetime, @DATEFILED_I_RE datetime) AS  set nocount on IF @DATEFILED_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .AHR2DI05 ORDER BY DATEFILED_I ASC, DEX_ROW_ID ASC END ELSE IF @DATEFILED_I_RS = @DATEFILED_I_RE BEGIN SELECT TOP 25  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .AHR2DI05 WHERE DATEFILED_I = @DATEFILED_I_RS ORDER BY DATEFILED_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .AHR2DI05 WHERE DATEFILED_I BETWEEN @DATEFILED_I_RS AND @DATEFILED_I_RE ORDER BY DATEFILED_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2DI05F_3] TO [DYNGRP]
GO
