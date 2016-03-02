SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00800L_1] (@Keyword_RS char(21), @Keyword_RE char(21)) AS  set nocount on IF @Keyword_RS IS NULL BEGIN SELECT TOP 25  Keyword, DEX_ROW_ID FROM .SVC00800 ORDER BY Keyword DESC END ELSE IF @Keyword_RS = @Keyword_RE BEGIN SELECT TOP 25  Keyword, DEX_ROW_ID FROM .SVC00800 WHERE Keyword = @Keyword_RS ORDER BY Keyword DESC END ELSE BEGIN SELECT TOP 25  Keyword, DEX_ROW_ID FROM .SVC00800 WHERE Keyword BETWEEN @Keyword_RS AND @Keyword_RE ORDER BY Keyword DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00800L_1] TO [DYNGRP]
GO
