SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10000SI] (@Drill_Down_ID char(15), @Drill_Down_Description char(65), @Drill_Down_Type smallint, @PRODID smallint, @FORMNAME char(79), @Extender_Type smallint, @Extender_ID char(15), @SmartList_Number smallint, @NOTEINDX numeric(19,5), @MODIFDT datetime, @MDFUSRID char(15), @CREATDDT datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .DDB10000 (Drill_Down_ID, Drill_Down_Description, Drill_Down_Type, PRODID, FORMNAME, Extender_Type, Extender_ID, SmartList_Number, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID) VALUES ( @Drill_Down_ID, @Drill_Down_Description, @Drill_Down_Type, @PRODID, @FORMNAME, @Extender_Type, @Extender_ID, @SmartList_Number, @NOTEINDX, @MODIFDT, @MDFUSRID, @CREATDDT, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10000SI] TO [DYNGRP]
GO
