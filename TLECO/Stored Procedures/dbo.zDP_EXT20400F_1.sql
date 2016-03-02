SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20400F_1] (@Extender_Event_ID_RS int, @Extender_Event_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Event_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Event_ID, Extender_Type, Extender_ID, Extender_Event_Type, Field_ID, Extender_Event_Desc, DEX_ROW_ID FROM .EXT20400 ORDER BY Extender_Event_ID ASC END ELSE IF @Extender_Event_ID_RS = @Extender_Event_ID_RE BEGIN SELECT TOP 25  Extender_Event_ID, Extender_Type, Extender_ID, Extender_Event_Type, Field_ID, Extender_Event_Desc, DEX_ROW_ID FROM .EXT20400 WHERE Extender_Event_ID = @Extender_Event_ID_RS ORDER BY Extender_Event_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Event_ID, Extender_Type, Extender_ID, Extender_Event_Type, Field_ID, Extender_Event_Desc, DEX_ROW_ID FROM .EXT20400 WHERE Extender_Event_ID BETWEEN @Extender_Event_ID_RS AND @Extender_Event_ID_RE ORDER BY Extender_Event_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20400F_1] TO [DYNGRP]
GO
