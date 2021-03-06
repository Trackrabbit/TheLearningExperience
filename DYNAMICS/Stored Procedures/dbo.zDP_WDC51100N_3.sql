SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51100N_3] (@BS int, @ACTIVE tinyint, @DEX_ROW_ID int, @ACTIVE_RS tinyint, @ACTIVE_RE tinyint) AS  set nocount on IF @ACTIVE_RS IS NULL BEGIN SELECT TOP 25  WDC_Entity_ID, USRCLASS, CMPANYID, USERID, ACTIVE, DEX_ROW_ID FROM .WDC51100 WHERE ( ACTIVE = @ACTIVE AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, DEX_ROW_ID ASC END ELSE IF @ACTIVE_RS = @ACTIVE_RE BEGIN SELECT TOP 25  WDC_Entity_ID, USRCLASS, CMPANYID, USERID, ACTIVE, DEX_ROW_ID FROM .WDC51100 WHERE ACTIVE = @ACTIVE_RS AND ( ACTIVE = @ACTIVE AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WDC_Entity_ID, USRCLASS, CMPANYID, USERID, ACTIVE, DEX_ROW_ID FROM .WDC51100 WHERE ACTIVE BETWEEN @ACTIVE_RS AND @ACTIVE_RE AND ( ACTIVE = @ACTIVE AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51100N_3] TO [DYNGRP]
GO
