SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20600N_4] (@BS int, @Extender_Event_ID int, @Extender_Event_ID_RS int, @Extender_Event_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Event_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Action_ID, Extender_Action_Name, Extender_Event_Type, Extender_Event_ID, PRODID, Long_Form_Name, Long_Window_Name, Long_Field_Name, TABLTECH, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT20600 WHERE ( Extender_Event_ID > @Extender_Event_ID ) ORDER BY Extender_Event_ID ASC END ELSE IF @Extender_Event_ID_RS = @Extender_Event_ID_RE BEGIN SELECT TOP 25  Extender_Action_ID, Extender_Action_Name, Extender_Event_Type, Extender_Event_ID, PRODID, Long_Form_Name, Long_Window_Name, Long_Field_Name, TABLTECH, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT20600 WHERE Extender_Event_ID = @Extender_Event_ID_RS AND ( Extender_Event_ID > @Extender_Event_ID ) ORDER BY Extender_Event_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Action_ID, Extender_Action_Name, Extender_Event_Type, Extender_Event_ID, PRODID, Long_Form_Name, Long_Window_Name, Long_Field_Name, TABLTECH, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT20600 WHERE Extender_Event_ID BETWEEN @Extender_Event_ID_RS AND @Extender_Event_ID_RE AND ( Extender_Event_ID > @Extender_Event_ID ) ORDER BY Extender_Event_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20600N_4] TO [DYNGRP]
GO
