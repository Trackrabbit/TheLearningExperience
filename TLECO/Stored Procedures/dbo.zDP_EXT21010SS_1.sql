SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21010SS_1] (@Extender_Solution_ID int, @Extender_Type smallint, @Extender_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Solution_ID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT21010 WHERE Extender_Solution_ID = @Extender_Solution_ID AND Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID ORDER BY Extender_Solution_ID ASC, Extender_Type ASC, Extender_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21010SS_1] TO [DYNGRP]
GO
