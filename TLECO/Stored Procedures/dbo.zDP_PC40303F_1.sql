SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40303F_1] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @BENEFIT_RS char(7), @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @BENEFIT_RE char(7)) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, BENEFIT, DEFPERMOPTION, DEFTEMPOPTION, DEX_ROW_ID FROM .PC40303 ORDER BY PLANCODE ASC, JOBTITLE ASC, BENEFIT ASC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, BENEFIT, DEFPERMOPTION, DEFTEMPOPTION, DEX_ROW_ID FROM .PC40303 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY PLANCODE ASC, JOBTITLE ASC, BENEFIT ASC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, BENEFIT, DEFPERMOPTION, DEFTEMPOPTION, DEX_ROW_ID FROM .PC40303 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY PLANCODE ASC, JOBTITLE ASC, BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40303F_1] TO [DYNGRP]
GO
