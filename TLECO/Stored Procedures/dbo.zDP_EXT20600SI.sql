SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20600SI] (@Extender_Action_ID char(15), @Extender_Action_Name char(65), @Extender_Event_Type smallint, @Extender_Event_ID int, @PRODID smallint, @Long_Form_Name char(255), @Long_Window_Name char(101), @Long_Field_Name char(101), @TABLTECH char(79), @NOTEINDX numeric(19,5), @MODIFDT datetime, @MDFUSRID char(15), @CREATDDT datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20600 (Extender_Action_ID, Extender_Action_Name, Extender_Event_Type, Extender_Event_ID, PRODID, Long_Form_Name, Long_Window_Name, Long_Field_Name, TABLTECH, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID) VALUES ( @Extender_Action_ID, @Extender_Action_Name, @Extender_Event_Type, @Extender_Event_ID, @PRODID, @Long_Form_Name, @Long_Window_Name, @Long_Field_Name, @TABLTECH, @NOTEINDX, @MODIFDT, @MDFUSRID, @CREATDDT, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20600SI] TO [DYNGRP]
GO
