SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20400SS_1] (@Extender_Event_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Extender_Type, Extender_ID, Extender_Event_Type, Field_ID, Extender_Event_Desc, DEX_ROW_ID FROM .EXT20400 WHERE Extender_Event_ID = @Extender_Event_ID ORDER BY Extender_Event_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20400SS_1] TO [DYNGRP]
GO
