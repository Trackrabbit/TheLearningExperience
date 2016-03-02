SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPBEN11F_2] (@BENEFIT_RS char(7), @COPAYCODE_I_RS char(15), @BENEFIT_RE char(7), @COPAYCODE_I_RE char(15)) AS  set nocount on IF @BENEFIT_RS IS NULL BEGIN SELECT TOP 25  COPAYCODE_I, BENEFIT, COPAYAMOUNT_I, DEX_ROW_ID FROM .HRPBEN11 ORDER BY BENEFIT ASC, COPAYCODE_I ASC END ELSE IF @BENEFIT_RS = @BENEFIT_RE BEGIN SELECT TOP 25  COPAYCODE_I, BENEFIT, COPAYAMOUNT_I, DEX_ROW_ID FROM .HRPBEN11 WHERE BENEFIT = @BENEFIT_RS AND COPAYCODE_I BETWEEN @COPAYCODE_I_RS AND @COPAYCODE_I_RE ORDER BY BENEFIT ASC, COPAYCODE_I ASC END ELSE BEGIN SELECT TOP 25  COPAYCODE_I, BENEFIT, COPAYAMOUNT_I, DEX_ROW_ID FROM .HRPBEN11 WHERE BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND COPAYCODE_I BETWEEN @COPAYCODE_I_RS AND @COPAYCODE_I_RE ORDER BY BENEFIT ASC, COPAYCODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPBEN11F_2] TO [DYNGRP]
GO
