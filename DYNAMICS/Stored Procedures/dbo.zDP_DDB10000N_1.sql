SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10000N_1] (@BS int, @Drill_Down_ID char(15), @Drill_Down_ID_RS char(15), @Drill_Down_ID_RE char(15)) AS set nocount on IF @Drill_Down_ID_RS IS NULL BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE ( Drill_Down_ID > @Drill_Down_ID ) ORDER BY Drill_Down_ID ASC END ELSE IF @Drill_Down_ID_RS = @Drill_Down_ID_RE BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE Drill_Down_ID = @Drill_Down_ID_RS AND ( Drill_Down_ID > @Drill_Down_ID ) ORDER BY Drill_Down_ID ASC END ELSE BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE Drill_Down_ID BETWEEN @Drill_Down_ID_RS AND @Drill_Down_ID_RE AND ( Drill_Down_ID > @Drill_Down_ID ) ORDER BY Drill_Down_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10000N_1] TO [DYNGRP]
GO
