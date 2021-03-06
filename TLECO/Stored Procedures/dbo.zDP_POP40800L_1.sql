SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40800L_1] (@LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 ORDER BY LOCNCODE DESC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 WHERE LOCNCODE = @LOCNCODE_RS ORDER BY LOCNCODE DESC END ELSE BEGIN SELECT TOP 25  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY LOCNCODE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40800L_1] TO [DYNGRP]
GO
