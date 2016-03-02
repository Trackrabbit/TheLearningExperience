SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21000SS_1] (@Extender_Solution_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE Extender_Solution_ID = @Extender_Solution_ID ORDER BY Extender_Solution_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21000SS_1] TO [DYNGRP]
GO
