SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40800SS_3] (@Toolbar_Group smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Toolbar_Group = @Toolbar_Group ORDER BY Toolbar_Group ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40800SS_3] TO [DYNGRP]
GO
