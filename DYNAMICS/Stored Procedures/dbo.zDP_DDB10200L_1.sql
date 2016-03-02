SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10200L_1] (@Drill_Down_ID_RS char(15), @Action_Number_RS smallint, @Drill_Down_ID_RE char(15), @Action_Number_RE smallint) AS set nocount on IF @Drill_Down_ID_RS IS NULL BEGIN SELECT TOP 25  Drill_Down_ID, Action_Number, Action_Type, FIELDNAM, RCRDTYPE, Window_Number, Field_Number, Drill_Down_Parameter_Num, DEX_ROW_ID FROM .DDB10200 ORDER BY Drill_Down_ID DESC, Action_Number DESC END ELSE IF @Drill_Down_ID_RS = @Drill_Down_ID_RE BEGIN SELECT TOP 25  Drill_Down_ID, Action_Number, Action_Type, FIELDNAM, RCRDTYPE, Window_Number, Field_Number, Drill_Down_Parameter_Num, DEX_ROW_ID FROM .DDB10200 WHERE Drill_Down_ID = @Drill_Down_ID_RS AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE ORDER BY Drill_Down_ID DESC, Action_Number DESC END ELSE BEGIN SELECT TOP 25  Drill_Down_ID, Action_Number, Action_Type, FIELDNAM, RCRDTYPE, Window_Number, Field_Number, Drill_Down_Parameter_Num, DEX_ROW_ID FROM .DDB10200 WHERE Drill_Down_ID BETWEEN @Drill_Down_ID_RS AND @Drill_Down_ID_RE AND Action_Number BETWEEN @Action_Number_RS AND @Action_Number_RE ORDER BY Drill_Down_ID DESC, Action_Number DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10200L_1] TO [DYNGRP]
GO
