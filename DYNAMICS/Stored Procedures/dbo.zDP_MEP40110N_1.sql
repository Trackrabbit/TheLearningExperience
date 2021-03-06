SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40110N_1] (@BS int, @INDXLONG int, @INDXLONG_RS int, @INDXLONG_RE int) AS /* 14.00.0084.000 */ set nocount on IF @INDXLONG_RS IS NULL BEGIN SELECT TOP 25  INDXLONG, UPDATEDDATE, CRUSRID, MESTATSTR, DEX_ROW_ID, TXTFIELD FROM .MEP40110 WHERE ( INDXLONG < @INDXLONG ) ORDER BY INDXLONG DESC END ELSE IF @INDXLONG_RS = @INDXLONG_RE BEGIN SELECT TOP 25  INDXLONG, UPDATEDDATE, CRUSRID, MESTATSTR, DEX_ROW_ID, TXTFIELD FROM .MEP40110 WHERE INDXLONG = @INDXLONG_RE AND ( INDXLONG < @INDXLONG ) ORDER BY INDXLONG DESC END ELSE BEGIN SELECT TOP 25  INDXLONG, UPDATEDDATE, CRUSRID, MESTATSTR, DEX_ROW_ID, TXTFIELD FROM .MEP40110 WHERE INDXLONG BETWEEN @INDXLONG_RE AND @INDXLONG_RS AND ( INDXLONG < @INDXLONG ) ORDER BY INDXLONG DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40110N_1] TO [DYNGRP]
GO
