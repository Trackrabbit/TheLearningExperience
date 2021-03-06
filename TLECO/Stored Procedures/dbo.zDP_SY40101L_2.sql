SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40101L_2] (@FSTFSCDY_RS datetime, @FSTFSCDY_RE datetime) AS  set nocount on IF @FSTFSCDY_RS IS NULL BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_TS, DEX_ROW_ID FROM .SY40101 ORDER BY FSTFSCDY DESC END ELSE IF @FSTFSCDY_RS = @FSTFSCDY_RE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_TS, DEX_ROW_ID FROM .SY40101 WHERE FSTFSCDY = @FSTFSCDY_RS ORDER BY FSTFSCDY DESC END ELSE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_TS, DEX_ROW_ID FROM .SY40101 WHERE FSTFSCDY BETWEEN @FSTFSCDY_RS AND @FSTFSCDY_RE ORDER BY FSTFSCDY DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40101L_2] TO [DYNGRP]
GO
