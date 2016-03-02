SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21000SS_2] (@Extender_Solution_Name char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT21000 WHERE Extender_Solution_Name = @Extender_Solution_Name ORDER BY Extender_Solution_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21000SS_2] TO [DYNGRP]
GO
