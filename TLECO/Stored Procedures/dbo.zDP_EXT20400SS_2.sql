SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20400SS_2] (@Extender_Type smallint, @Extender_ID char(15), @Extender_Event_Type smallint, @Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Extender_Type, Extender_ID, Extender_Event_Type, Field_ID, Extender_Event_Desc, DEX_ROW_ID FROM .EXT20400 WHERE Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID AND Extender_Event_Type = @Extender_Event_Type AND Field_ID = @Field_ID ORDER BY Extender_Type ASC, Extender_ID ASC, Extender_Event_Type ASC, Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20400SS_2] TO [DYNGRP]
GO
