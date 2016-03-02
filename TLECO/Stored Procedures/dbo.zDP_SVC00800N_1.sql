SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00800N_1] (@BS int, @Keyword char(21), @Keyword_RS char(21), @Keyword_RE char(21)) AS  set nocount on IF @Keyword_RS IS NULL BEGIN SELECT TOP 25  Keyword, DEX_ROW_ID FROM .SVC00800 WHERE ( Keyword > @Keyword ) ORDER BY Keyword ASC END ELSE IF @Keyword_RS = @Keyword_RE BEGIN SELECT TOP 25  Keyword, DEX_ROW_ID FROM .SVC00800 WHERE Keyword = @Keyword_RS AND ( Keyword > @Keyword ) ORDER BY Keyword ASC END ELSE BEGIN SELECT TOP 25  Keyword, DEX_ROW_ID FROM .SVC00800 WHERE Keyword BETWEEN @Keyword_RS AND @Keyword_RE AND ( Keyword > @Keyword ) ORDER BY Keyword ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00800N_1] TO [DYNGRP]
GO
