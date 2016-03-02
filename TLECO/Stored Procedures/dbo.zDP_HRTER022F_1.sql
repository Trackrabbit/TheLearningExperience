SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTER022F_1] (@TERMSETUPCODE_I_RS char(31), @TERMSETUPCODE_I_RE char(31)) AS  set nocount on IF @TERMSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  TERMSETUPCODE_I, TERMSETUPNAME_I, DEX_ROW_ID FROM .HRTER022 ORDER BY TERMSETUPCODE_I ASC END ELSE IF @TERMSETUPCODE_I_RS = @TERMSETUPCODE_I_RE BEGIN SELECT TOP 25  TERMSETUPCODE_I, TERMSETUPNAME_I, DEX_ROW_ID FROM .HRTER022 WHERE TERMSETUPCODE_I = @TERMSETUPCODE_I_RS ORDER BY TERMSETUPCODE_I ASC END ELSE BEGIN SELECT TOP 25  TERMSETUPCODE_I, TERMSETUPNAME_I, DEX_ROW_ID FROM .HRTER022 WHERE TERMSETUPCODE_I BETWEEN @TERMSETUPCODE_I_RS AND @TERMSETUPCODE_I_RE ORDER BY TERMSETUPCODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTER022F_1] TO [DYNGRP]
GO
