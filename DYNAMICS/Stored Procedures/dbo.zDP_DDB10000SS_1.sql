SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10000SS_1] (@Drill_Down_ID char(15)) AS set nocount on SELECT TOP 1  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE Drill_Down_ID = @Drill_Down_ID ORDER BY Drill_Down_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10000SS_1] TO [DYNGRP]
GO
