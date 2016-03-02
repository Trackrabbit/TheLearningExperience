SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2DI05F_2] (@EMPID_I_RS char(15), @DATEFILED_I_RS datetime, @DSCRIPTN_RS char(31), @POINTS_I_RS smallint, @EMPID_I_RE char(15), @DATEFILED_I_RE datetime, @DSCRIPTN_RE char(31), @POINTS_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .AHR2DI05 ORDER BY EMPID_I ASC, DATEFILED_I ASC, DSCRIPTN ASC, POINTS_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .AHR2DI05 WHERE EMPID_I = @EMPID_I_RS AND DATEFILED_I BETWEEN @DATEFILED_I_RS AND @DATEFILED_I_RE AND DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND POINTS_I BETWEEN @POINTS_I_RS AND @POINTS_I_RE ORDER BY EMPID_I ASC, DATEFILED_I ASC, DSCRIPTN ASC, POINTS_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .AHR2DI05 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND DATEFILED_I BETWEEN @DATEFILED_I_RS AND @DATEFILED_I_RE AND DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND POINTS_I BETWEEN @POINTS_I_RS AND @POINTS_I_RE ORDER BY EMPID_I ASC, DATEFILED_I ASC, DSCRIPTN ASC, POINTS_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2DI05F_2] TO [DYNGRP]
GO
