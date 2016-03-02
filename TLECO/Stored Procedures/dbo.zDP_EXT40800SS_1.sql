SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40800SS_1] (@Extender_Menu_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Extender_Menu_ID = @Extender_Menu_ID ORDER BY Extender_Menu_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40800SS_1] TO [DYNGRP]
GO
