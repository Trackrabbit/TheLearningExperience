SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10200SS_1] (@Drill_Down_ID char(15), @Action_Number smallint) AS set nocount on SELECT TOP 1  Drill_Down_ID, Action_Number, Action_Type, FIELDNAM, RCRDTYPE, Window_Number, Field_Number, Drill_Down_Parameter_Num, DEX_ROW_ID FROM .DDB10200 WHERE Drill_Down_ID = @Drill_Down_ID AND Action_Number = @Action_Number ORDER BY Drill_Down_ID ASC, Action_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10200SS_1] TO [DYNGRP]
GO
