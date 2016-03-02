SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20404SS_1] (@Extender_Event_ID int, @Action_Number smallint, @Extender_Trx_Option smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Action_Number, Extender_Trx_Option, Extender_Trx_Value_Type, Field_ID, STRGA255, TOTAL, DATE1, DEX_ROW_ID FROM .EXT20404 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number AND Extender_Trx_Option = @Extender_Trx_Option ORDER BY Extender_Event_ID ASC, Action_Number ASC, Extender_Trx_Option ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20404SS_1] TO [DYNGRP]
GO
