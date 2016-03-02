SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20600SS_4] (@Extender_Event_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Action_ID, Extender_Action_Name, Extender_Event_Type, Extender_Event_ID, PRODID, Long_Form_Name, Long_Window_Name, Long_Field_Name, TABLTECH, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .EXT20600 WHERE Extender_Event_ID = @Extender_Event_ID ORDER BY Extender_Event_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20600SS_4] TO [DYNGRP]
GO
