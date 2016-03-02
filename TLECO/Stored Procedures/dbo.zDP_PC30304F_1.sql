SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC30304F_1] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @TEMPSEAT_RS tinyint, @SEAT_RS int, @CHANGEDATE_I_RS datetime, @SEQ_I_RS int, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @TEMPSEAT_RE tinyint, @SEAT_RE int, @CHANGEDATE_I_RE datetime, @SEQ_I_RE int) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, CHANGEDATE_I, SEQ_I, CHANGETIME_I, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, CHANGEBY_I, CHANGEREASON_I, DEX_ROW_ID FROM .PC30304 ORDER BY PLANCODE ASC, JOBTITLE ASC, TEMPSEAT ASC, SEAT ASC, CHANGEDATE_I ASC, SEQ_I ASC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, CHANGEDATE_I, SEQ_I, CHANGETIME_I, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, CHANGEBY_I, CHANGEREASON_I, DEX_ROW_ID FROM .PC30304 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND TEMPSEAT BETWEEN @TEMPSEAT_RS AND @TEMPSEAT_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND CHANGEDATE_I BETWEEN @CHANGEDATE_I_RS AND @CHANGEDATE_I_RE AND SEQ_I BETWEEN @SEQ_I_RS AND @SEQ_I_RE ORDER BY PLANCODE ASC, JOBTITLE ASC, TEMPSEAT ASC, SEAT ASC, CHANGEDATE_I ASC, SEQ_I ASC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, TEMPSEAT, SEAT, CHANGEDATE_I, SEQ_I, CHANGETIME_I, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, CHANGEBY_I, CHANGEREASON_I, DEX_ROW_ID FROM .PC30304 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND TEMPSEAT BETWEEN @TEMPSEAT_RS AND @TEMPSEAT_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND CHANGEDATE_I BETWEEN @CHANGEDATE_I_RS AND @CHANGEDATE_I_RE AND SEQ_I BETWEEN @SEQ_I_RS AND @SEQ_I_RE ORDER BY PLANCODE ASC, JOBTITLE ASC, TEMPSEAT ASC, SEAT ASC, CHANGEDATE_I ASC, SEQ_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC30304F_1] TO [DYNGRP]
GO
