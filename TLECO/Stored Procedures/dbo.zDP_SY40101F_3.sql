SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40101F_3] (@HISTORYR_RS tinyint, @YEAR1_RS smallint, @HISTORYR_RE tinyint, @YEAR1_RE smallint) AS  set nocount on IF @HISTORYR_RS IS NULL BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_TS, DEX_ROW_ID FROM .SY40101 ORDER BY HISTORYR ASC, YEAR1 ASC END ELSE IF @HISTORYR_RS = @HISTORYR_RE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_TS, DEX_ROW_ID FROM .SY40101 WHERE HISTORYR = @HISTORYR_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY HISTORYR ASC, YEAR1 ASC END ELSE BEGIN SELECT TOP 25  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_TS, DEX_ROW_ID FROM .SY40101 WHERE HISTORYR BETWEEN @HISTORYR_RS AND @HISTORYR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY HISTORYR ASC, YEAR1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40101F_3] TO [DYNGRP]
GO
