SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20500SS_3] (@View_Name char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE View_Name = @View_Name ORDER BY View_Name ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20500SS_3] TO [DYNGRP]
GO
