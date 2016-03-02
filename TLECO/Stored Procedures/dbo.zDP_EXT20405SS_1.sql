SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20405SS_1] (@Extender_Event_ID int, @Action_Number smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Action_Number, Extender_Hot_Key, DEX_ROW_ID FROM .EXT20405 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number ORDER BY Extender_Event_ID ASC, Action_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20405SS_1] TO [DYNGRP]
GO
