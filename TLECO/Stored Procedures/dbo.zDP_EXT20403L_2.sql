SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20403L_2] (@Extender_Event_ID_RS int, @Action_Number_RS smallint, @Field_ID_RS int, @Extender_Event_ID_RE int, @Action_Number_RE smallint, @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Event_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, LNITMSEQ, Field_ID, Set_Value_Type, Field_ID_2, STRGA255, TOTAL, DATE1, TIME1, Action_Task_Type, Long_Field_Name, Long_Field_Name_2, DEX_ROW_ID FROM .EXT20403 ORDER BY Extender_Event_ID DESC, Action_Number DESC, Field_ID DESC, DEX_ROW_ID DESC END ELSE IF @Extender_Event_ID_RS = @Extender_Event_ID_RE BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, LNITMSEQ, Field_ID, Set_Value_Type, Field_ID_2, STRGA255, TOTAL, DATE1, TIME1, Action_Task_Type, Long_Field_Name, Long_Field_Name_2, DEX_ROW_ID FROM .EXT20403 WHERE Extender_Event_ID = @Extender_Event_ID_RS AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Event_ID DESC, Action_Number DESC, Field_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Event_ID, Action_Number, LNITMSEQ, Field_ID, Set_Value_Type, Field_ID_2, STRGA255, TOTAL, DATE1, TIME1, Action_Task_Type, Long_Field_Name, Long_Field_Name_2, DEX_ROW_ID FROM .EXT20403 WHERE Extender_Event_ID BETWEEN @Extender_Event_ID_RS AND @Extender_Event_ID_RE AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Event_ID DESC, Action_Number DESC, Field_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20403L_2] TO [DYNGRP]
GO