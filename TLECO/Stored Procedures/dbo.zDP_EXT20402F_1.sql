SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20402F_1] (@Extender_Event_ID_RS int, @Action_Number_RS smallint, @Condition_Number_RS smallint, @Extender_Event_ID_RE int, @Action_Number_RE smallint, @Condition_Number_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Event_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, Condition_Number, Field_ID, Long_Field_Name, ExtenderActionCondition, STRGA255, STRGB255, From_Amount, To_Amount, From_Date, TODATE, From_Time, To_Time, DEX_ROW_ID FROM .EXT20402 ORDER BY Extender_Event_ID ASC, Action_Number ASC, Condition_Number ASC END ELSE IF @Extender_Event_ID_RS = @Extender_Event_ID_RE BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, Condition_Number, Field_ID, Long_Field_Name, ExtenderActionCondition, STRGA255, STRGB255, From_Amount, To_Amount, From_Date, TODATE, From_Time, To_Time, DEX_ROW_ID FROM .EXT20402 WHERE Extender_Event_ID = @Extender_Event_ID_RS AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE AND Condition_Number BETWEEN @Condition_Number_RS AND @Condition_Number_RE ORDER BY Extender_Event_ID ASC, Action_Number ASC, Condition_Number ASC END ELSE BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, Condition_Number, Field_ID, Long_Field_Name, ExtenderActionCondition, STRGA255, STRGB255, From_Amount, To_Amount, From_Date, TODATE, From_Time, To_Time, DEX_ROW_ID FROM .EXT20402 WHERE Extender_Event_ID BETWEEN @Extender_Event_ID_RS AND @Extender_Event_ID_RE AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE AND Condition_Number BETWEEN @Condition_Number_RS AND @Condition_Number_RE ORDER BY Extender_Event_ID ASC, Action_Number ASC, Condition_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20402F_1] TO [DYNGRP]
GO
