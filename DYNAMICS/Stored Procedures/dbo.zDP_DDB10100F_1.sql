SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10100F_1] (@Drill_Down_ID_RS char(15), @Drill_Down_Parameter_Num_RS smallint, @Drill_Down_ID_RE char(15), @Drill_Down_Parameter_Num_RE smallint) AS set nocount on IF @Drill_Down_ID_RS IS NULL BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Parameter_Num, Parameter_Name, FIELDTYPE, DEX_ROW_ID FROM .DDB10100 ORDER BY Drill_Down_ID ASC, Drill_Down_Parameter_Num ASC END ELSE IF @Drill_Down_ID_RS = @Drill_Down_ID_RE BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Parameter_Num, Parameter_Name, FIELDTYPE, DEX_ROW_ID FROM .DDB10100 WHERE Drill_Down_ID = @Drill_Down_ID_RS AND Drill_Down_Parameter_Num BETWEEN @Drill_Down_Parameter_Num_RS AND @Drill_Down_Parameter_Num_RE ORDER BY Drill_Down_ID ASC, Drill_Down_Parameter_Num ASC END ELSE BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Parameter_Num, Parameter_Name, FIELDTYPE, DEX_ROW_ID FROM .DDB10100 WHERE Drill_Down_ID BETWEEN @Drill_Down_ID_RS AND @Drill_Down_ID_RE AND Drill_Down_Parameter_Num BETWEEN @Drill_Down_Parameter_Num_RS AND @Drill_Down_Parameter_Num_RE ORDER BY Drill_Down_ID ASC, Drill_Down_Parameter_Num ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10100F_1] TO [DYNGRP]
GO
