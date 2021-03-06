SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40800F_2] (@ADRSCODE_RS char(15), @LOCNCODE_RS char(11), @ADRSCODE_RE char(15), @LOCNCODE_RE char(11)) AS  set nocount on IF @ADRSCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 ORDER BY ADRSCODE ASC, LOCNCODE ASC END ELSE IF @ADRSCODE_RS = @ADRSCODE_RE BEGIN SELECT TOP 25  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 WHERE ADRSCODE = @ADRSCODE_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY ADRSCODE ASC, LOCNCODE ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 WHERE ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY ADRSCODE ASC, LOCNCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40800F_2] TO [DYNGRP]
GO
