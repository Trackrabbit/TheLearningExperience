SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40800SI] (@Extender_Menu_ID char(15), @Extender_Menu_Name char(31), @Toolbar_Group smallint, @NOTEINDX numeric(19,5), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT40800 (Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Extender_Menu_ID, @Extender_Menu_Name, @Toolbar_Group, @NOTEINDX, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40800SI] TO [DYNGRP]
GO
