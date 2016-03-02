SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21000N_2] (@BS int, @Extender_Solution_Name char(65), @Extender_Solution_Name_RS char(65), @Extender_Solution_Name_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Solution_Name_RS IS NULL BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE ( Extender_Solution_Name > @Extender_Solution_Name ) ORDER BY Extender_Solution_Name ASC END ELSE IF @Extender_Solution_Name_RS = @Extender_Solution_Name_RE BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE Extender_Solution_Name = @Extender_Solution_Name_RS AND ( Extender_Solution_Name > @Extender_Solution_Name ) ORDER BY Extender_Solution_Name ASC END ELSE BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE Extender_Solution_Name BETWEEN @Extender_Solution_Name_RS AND @Extender_Solution_Name_RE AND ( Extender_Solution_Name > @Extender_Solution_Name ) ORDER BY Extender_Solution_Name ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21000N_2] TO [DYNGRP]
GO
