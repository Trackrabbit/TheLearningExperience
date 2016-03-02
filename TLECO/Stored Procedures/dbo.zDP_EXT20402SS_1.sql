SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20402SS_1] (@Extender_Event_ID int, @Action_Number smallint, @Condition_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Action_Number, Condition_Number, Field_ID, Long_Field_Name, ExtenderActionCondition, STRGA255, STRGB255, From_Amount, To_Amount, From_Date, TODATE, From_Time, To_Time, DEX_ROW_ID FROM .EXT20402 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number AND Condition_Number = @Condition_Number ORDER BY Extender_Event_ID ASC, Action_Number ASC, Condition_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20402SS_1] TO [DYNGRP]
GO
