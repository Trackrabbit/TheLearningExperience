SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40304L_3] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SEAT_RS int, @TEMPSEAT_RS tinyint, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @SEAT_RE int, @TEMPSEAT_RE tinyint) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, DEX_ROW_ID FROM .PC40304 ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, TEMPSEAT DESC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, DEX_ROW_ID FROM .PC40304 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND TEMPSEAT BETWEEN @TEMPSEAT_RS AND @TEMPSEAT_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, TEMPSEAT DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, DEX_ROW_ID FROM .PC40304 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND TEMPSEAT BETWEEN @TEMPSEAT_RS AND @TEMPSEAT_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, SEAT DESC, TEMPSEAT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40304L_3] TO [DYNGRP]
GO
