SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA230L_1] (@EMPID_I_RS char(15), @TIMECODE_I_RS char(7), @YEAR1_RS smallint, @EMPID_I_RE char(15), @TIMECODE_I_RE char(7), @YEAR1_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, TIMECODE_I, YEAR1, HOURSAVAILABLE_I, DEX_ROW_ID FROM .AHRTA230 ORDER BY EMPID_I DESC, TIMECODE_I DESC, YEAR1 DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, TIMECODE_I, YEAR1, HOURSAVAILABLE_I, DEX_ROW_ID FROM .AHRTA230 WHERE EMPID_I = @EMPID_I_RS AND TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY EMPID_I DESC, TIMECODE_I DESC, YEAR1 DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, TIMECODE_I, YEAR1, HOURSAVAILABLE_I, DEX_ROW_ID FROM .AHRTA230 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE ORDER BY EMPID_I DESC, TIMECODE_I DESC, YEAR1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA230L_1] TO [DYNGRP]
GO
