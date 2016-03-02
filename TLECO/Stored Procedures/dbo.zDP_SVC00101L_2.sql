SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00101L_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2, DEX_ROW_ID FROM .SVC00101 ORDER BY DEX_ROW_ID DESC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2, DEX_ROW_ID FROM .SVC00101 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2, DEX_ROW_ID FROM .SVC00101 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00101L_2] TO [DYNGRP]
GO
