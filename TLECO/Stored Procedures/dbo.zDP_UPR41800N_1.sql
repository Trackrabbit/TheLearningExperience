SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41800N_1] (@BS int, @MAXDEDUCTION char(15), @MAXDEDUCTION_RS char(15), @MAXDEDUCTION_RE char(15)) AS  set nocount on IF @MAXDEDUCTION_RS IS NULL BEGIN SELECT TOP 25  MAXDEDUCTION, DSCRIPTN, STATEFED, MAXMETHOD, MAXPERCENT, MAXEXEMPTAMT, MINWAGEAMT, EARNINGSCODE, INCLUDEPREVSEQDED, NOTEINDX, DEX_ROW_ID FROM .UPR41800 WHERE ( MAXDEDUCTION > @MAXDEDUCTION ) ORDER BY MAXDEDUCTION ASC END ELSE IF @MAXDEDUCTION_RS = @MAXDEDUCTION_RE BEGIN SELECT TOP 25  MAXDEDUCTION, DSCRIPTN, STATEFED, MAXMETHOD, MAXPERCENT, MAXEXEMPTAMT, MINWAGEAMT, EARNINGSCODE, INCLUDEPREVSEQDED, NOTEINDX, DEX_ROW_ID FROM .UPR41800 WHERE MAXDEDUCTION = @MAXDEDUCTION_RS AND ( MAXDEDUCTION > @MAXDEDUCTION ) ORDER BY MAXDEDUCTION ASC END ELSE BEGIN SELECT TOP 25  MAXDEDUCTION, DSCRIPTN, STATEFED, MAXMETHOD, MAXPERCENT, MAXEXEMPTAMT, MINWAGEAMT, EARNINGSCODE, INCLUDEPREVSEQDED, NOTEINDX, DEX_ROW_ID FROM .UPR41800 WHERE MAXDEDUCTION BETWEEN @MAXDEDUCTION_RS AND @MAXDEDUCTION_RE AND ( MAXDEDUCTION > @MAXDEDUCTION ) ORDER BY MAXDEDUCTION ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41800N_1] TO [DYNGRP]
GO
