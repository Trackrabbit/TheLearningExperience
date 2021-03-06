SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40103L_2] (@FSTFSCDY_RS datetime, @FSTFSCDY_RE datetime) AS  set nocount on IF @FSTFSCDY_RS IS NULL BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 ORDER BY FSTFSCDY DESC, DEX_ROW_ID DESC END ELSE IF @FSTFSCDY_RS = @FSTFSCDY_RE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 WHERE FSTFSCDY = @FSTFSCDY_RS ORDER BY FSTFSCDY DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 WHERE FSTFSCDY BETWEEN @FSTFSCDY_RS AND @FSTFSCDY_RE ORDER BY FSTFSCDY DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40103L_2] TO [DYNGRP]
GO
