SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10000SS_2] (@Drill_Down_Description char(65)) AS set nocount on SELECT TOP 1  Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .DDB10000 WHERE Drill_Down_Description = @Drill_Down_Description ORDER BY Drill_Down_Description ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10000SS_2] TO [DYNGRP]
GO
