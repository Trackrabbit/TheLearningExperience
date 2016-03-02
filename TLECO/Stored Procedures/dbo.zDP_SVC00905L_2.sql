SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00905L_2] (@DSCRIPTN_RS char(31), @DSCRIPTN_RE char(31)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  TECHSTAT, DSCRIPTN, Tech_Available, DEX_ROW_ID FROM .SVC00905 ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  TECHSTAT, DSCRIPTN, Tech_Available, DEX_ROW_ID FROM .SVC00905 WHERE DSCRIPTN = @DSCRIPTN_RS ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TECHSTAT, DSCRIPTN, Tech_Available, DEX_ROW_ID FROM .SVC00905 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00905L_2] TO [DYNGRP]
GO
