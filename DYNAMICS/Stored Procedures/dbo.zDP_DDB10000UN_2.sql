SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10000UN_2] (@BS int, @Drill_Down_Description char(65), @Drill_Down_Description_RS char(65), @Drill_Down_Description_RE char(65)) AS set nocount on IF @Drill_Down_Description_RS IS NULL BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE ( Drill_Down_Description > @Drill_Down_Description ) ORDER BY Drill_Down_Description ASC, DEX_ROW_ID ASC END ELSE IF @Drill_Down_Description_RS = @Drill_Down_Description_RE BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE Drill_Down_Description = @Drill_Down_Description_RS AND ( Drill_Down_Description > @Drill_Down_Description ) ORDER BY Drill_Down_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE Drill_Down_Description BETWEEN @Drill_Down_Description_RS AND @Drill_Down_Description_RE AND ( Drill_Down_Description > @Drill_Down_Description ) ORDER BY Drill_Down_Description ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10000UN_2] TO [DYNGRP]
GO
