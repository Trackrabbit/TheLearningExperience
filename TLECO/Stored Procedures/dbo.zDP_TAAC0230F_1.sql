SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAAC0230F_1] (@ACCRUAL_I_RS char(7), @TIMECODE_I_RS char(7), @ACCRUAL_I_RE char(7), @TIMECODE_I_RE char(7)) AS  set nocount on IF @ACCRUAL_I_RS IS NULL BEGIN SELECT TOP 25  ACCRUAL_I, TIMECODE_I, DEX_ROW_ID FROM .TAAC0230 ORDER BY ACCRUAL_I ASC, TIMECODE_I ASC END ELSE IF @ACCRUAL_I_RS = @ACCRUAL_I_RE BEGIN SELECT TOP 25  ACCRUAL_I, TIMECODE_I, DEX_ROW_ID FROM .TAAC0230 WHERE ACCRUAL_I = @ACCRUAL_I_RS AND TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE ORDER BY ACCRUAL_I ASC, TIMECODE_I ASC END ELSE BEGIN SELECT TOP 25  ACCRUAL_I, TIMECODE_I, DEX_ROW_ID FROM .TAAC0230 WHERE ACCRUAL_I BETWEEN @ACCRUAL_I_RS AND @ACCRUAL_I_RE AND TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE ORDER BY ACCRUAL_I ASC, TIMECODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAAC0230F_1] TO [DYNGRP]
GO
