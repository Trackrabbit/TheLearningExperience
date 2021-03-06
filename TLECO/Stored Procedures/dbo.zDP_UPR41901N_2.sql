SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41901N_2] (@BS int, @PAYRCORD char(7), @EARNINGSCODE char(15), @PAYRCORD_RS char(7), @EARNINGSCODE_RS char(15), @PAYRCORD_RE char(7), @EARNINGSCODE_RE char(15)) AS  set nocount on IF @PAYRCORD_RS IS NULL BEGIN SELECT TOP 25  EARNINGSCODE, PAYRCORD, DEX_ROW_ID FROM .UPR41901 WHERE ( PAYRCORD = @PAYRCORD AND EARNINGSCODE > @EARNINGSCODE OR PAYRCORD > @PAYRCORD ) ORDER BY PAYRCORD ASC, EARNINGSCODE ASC END ELSE IF @PAYRCORD_RS = @PAYRCORD_RE BEGIN SELECT TOP 25  EARNINGSCODE, PAYRCORD, DEX_ROW_ID FROM .UPR41901 WHERE PAYRCORD = @PAYRCORD_RS AND EARNINGSCODE BETWEEN @EARNINGSCODE_RS AND @EARNINGSCODE_RE AND ( PAYRCORD = @PAYRCORD AND EARNINGSCODE > @EARNINGSCODE OR PAYRCORD > @PAYRCORD ) ORDER BY PAYRCORD ASC, EARNINGSCODE ASC END ELSE BEGIN SELECT TOP 25  EARNINGSCODE, PAYRCORD, DEX_ROW_ID FROM .UPR41901 WHERE PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND EARNINGSCODE BETWEEN @EARNINGSCODE_RS AND @EARNINGSCODE_RE AND ( PAYRCORD = @PAYRCORD AND EARNINGSCODE > @EARNINGSCODE OR PAYRCORD > @PAYRCORD ) ORDER BY PAYRCORD ASC, EARNINGSCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41901N_2] TO [DYNGRP]
GO
