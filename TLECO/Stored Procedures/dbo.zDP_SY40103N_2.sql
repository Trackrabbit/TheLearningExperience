SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40103N_2] (@BS int, @FSTFSCDY datetime, @DEX_ROW_ID int, @FSTFSCDY_RS datetime, @FSTFSCDY_RE datetime) AS  set nocount on IF @FSTFSCDY_RS IS NULL BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 WHERE ( FSTFSCDY = @FSTFSCDY AND DEX_ROW_ID > @DEX_ROW_ID OR FSTFSCDY > @FSTFSCDY ) ORDER BY FSTFSCDY ASC, DEX_ROW_ID ASC END ELSE IF @FSTFSCDY_RS = @FSTFSCDY_RE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 WHERE FSTFSCDY = @FSTFSCDY_RS AND ( FSTFSCDY = @FSTFSCDY AND DEX_ROW_ID > @DEX_ROW_ID OR FSTFSCDY > @FSTFSCDY ) ORDER BY FSTFSCDY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 WHERE FSTFSCDY BETWEEN @FSTFSCDY_RS AND @FSTFSCDY_RE AND ( FSTFSCDY = @FSTFSCDY AND DEX_ROW_ID > @DEX_ROW_ID OR FSTFSCDY > @FSTFSCDY ) ORDER BY FSTFSCDY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40103N_2] TO [DYNGRP]
GO
