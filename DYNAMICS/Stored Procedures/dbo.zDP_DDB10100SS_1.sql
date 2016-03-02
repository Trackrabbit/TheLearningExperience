SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10100SS_1] (@Drill_Down_ID char(15), @Drill_Down_Parameter_Num smallint) AS set nocount on SELECT TOP 1  Drill_Down_ID, Drill_Down_Parameter_Num, Parameter_Name, FIELDTYPE, DEX_ROW_ID FROM .DDB10100 WHERE Drill_Down_ID = @Drill_Down_ID AND Drill_Down_Parameter_Num = @Drill_Down_Parameter_Num ORDER BY Drill_Down_ID ASC, Drill_Down_Parameter_Num ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10100SS_1] TO [DYNGRP]
GO
