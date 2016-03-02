SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40306N_2] (@BS int, @PLANCODE char(15), @JOBTITLE char(7), @STRTDATE datetime, @PLANCODE_RS char(15), @JOBTITLE_RS char(7), @STRTDATE_RS datetime, @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @STRTDATE_RE datetime) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, DSCRIPTN, STRTDATE, ENDDATE, BUDGETPLANAMT, DEX_ROW_ID FROM .PC40306 WHERE ( PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND STRTDATE > @STRTDATE OR PLANCODE = @PLANCODE AND JOBTITLE > @JOBTITLE OR PLANCODE > @PLANCODE ) ORDER BY PLANCODE ASC, JOBTITLE ASC, STRTDATE ASC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, DSCRIPTN, STRTDATE, ENDDATE, BUDGETPLANAMT, DEX_ROW_ID FROM .PC40306 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ( PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND STRTDATE > @STRTDATE OR PLANCODE = @PLANCODE AND JOBTITLE > @JOBTITLE OR PLANCODE > @PLANCODE ) ORDER BY PLANCODE ASC, JOBTITLE ASC, STRTDATE ASC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEQNUMBR, DSCRIPTN, STRTDATE, ENDDATE, BUDGETPLANAMT, DEX_ROW_ID FROM .PC40306 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ( PLANCODE = @PLANCODE AND JOBTITLE = @JOBTITLE AND STRTDATE > @STRTDATE OR PLANCODE = @PLANCODE AND JOBTITLE > @JOBTITLE OR PLANCODE > @PLANCODE ) ORDER BY PLANCODE ASC, JOBTITLE ASC, STRTDATE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40306N_2] TO [DYNGRP]
GO
