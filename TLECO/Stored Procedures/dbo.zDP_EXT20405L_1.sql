SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20405L_1] (@Extender_Event_ID_RS int, @Action_Number_RS smallint, @Extender_Event_ID_RE int, @Action_Number_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @Extender_Event_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, Extender_Hot_Key, DEX_ROW_ID FROM .EXT20405 ORDER BY Extender_Event_ID DESC, Action_Number DESC END ELSE IF @Extender_Event_ID_RS = @Extender_Event_ID_RE BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, Extender_Hot_Key, DEX_ROW_ID FROM .EXT20405 WHERE Extender_Event_ID = @Extender_Event_ID_RS AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE ORDER BY Extender_Event_ID DESC, Action_Number DESC END ELSE BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, Extender_Hot_Key, DEX_ROW_ID FROM .EXT20405 WHERE Extender_Event_ID BETWEEN @Extender_Event_ID_RS AND @Extender_Event_ID_RE AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE ORDER BY Extender_Event_ID DESC, Action_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20405L_1] TO [DYNGRP]
GO
