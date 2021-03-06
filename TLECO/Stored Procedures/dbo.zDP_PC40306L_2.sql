SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40306L_2] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @STRTDATE_RS datetime, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @STRTDATE_RE datetime) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, DSCRIPTN, STRTDATE, ENDDATE, BUDGETPLANAMT, DEX_ROW_ID FROM .PC40306 ORDER BY PLANCODE DESC, JOBTITLE DESC, STRTDATE DESC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, DSCRIPTN, STRTDATE, ENDDATE, BUDGETPLANAMT, DEX_ROW_ID FROM .PC40306 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, STRTDATE DESC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, DSCRIPTN, STRTDATE, ENDDATE, BUDGETPLANAMT, DEX_ROW_ID FROM .PC40306 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY PLANCODE DESC, JOBTITLE DESC, STRTDATE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40306L_2] TO [DYNGRP]
GO
