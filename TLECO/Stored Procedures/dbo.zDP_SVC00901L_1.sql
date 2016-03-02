SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00901L_1] (@CAUSECDE_RS char(11), @CAUSECDE_RE char(11)) AS  set nocount on IF @CAUSECDE_RS IS NULL BEGIN SELECT TOP 25  CAUSECDE, DSCRIPTN, DEX_ROW_ID FROM .SVC00901 ORDER BY CAUSECDE DESC END ELSE IF @CAUSECDE_RS = @CAUSECDE_RE BEGIN SELECT TOP 25  CAUSECDE, DSCRIPTN, DEX_ROW_ID FROM .SVC00901 WHERE CAUSECDE = @CAUSECDE_RS ORDER BY CAUSECDE DESC END ELSE BEGIN SELECT TOP 25  CAUSECDE, DSCRIPTN, DEX_ROW_ID FROM .SVC00901 WHERE CAUSECDE BETWEEN @CAUSECDE_RS AND @CAUSECDE_RE ORDER BY CAUSECDE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00901L_1] TO [DYNGRP]
GO
