SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40300L_2] (@DSCRIPTN_RS char(31), @PLANCODE_RS char(15), @DSCRIPTN_RE char(31), @PLANCODE_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, DSCRIPTN, STRTDATE, ENDDATE, INACTIVE, DEX_ROW_ID FROM .PC40300 ORDER BY DSCRIPTN DESC, PLANCODE DESC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  PLANCODE, DSCRIPTN, STRTDATE, ENDDATE, INACTIVE, DEX_ROW_ID FROM .PC40300 WHERE DSCRIPTN = @DSCRIPTN_RS AND PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE ORDER BY DSCRIPTN DESC, PLANCODE DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, DSCRIPTN, STRTDATE, ENDDATE, INACTIVE, DEX_ROW_ID FROM .PC40300 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE ORDER BY DSCRIPTN DESC, PLANCODE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40300L_2] TO [DYNGRP]
GO
