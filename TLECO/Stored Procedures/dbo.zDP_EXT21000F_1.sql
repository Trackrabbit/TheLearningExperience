SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21000F_1] (@Extender_Solution_ID_RS int, @Extender_Solution_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Solution_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 ORDER BY Extender_Solution_ID ASC END ELSE IF @Extender_Solution_ID_RS = @Extender_Solution_ID_RE BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE Extender_Solution_ID = @Extender_Solution_ID_RS ORDER BY Extender_Solution_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE Extender_Solution_ID BETWEEN @Extender_Solution_ID_RS AND @Extender_Solution_ID_RE ORDER BY Extender_Solution_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21000F_1] TO [DYNGRP]
GO
