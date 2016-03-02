SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40810SS_3] (@Navigation_Pane smallint, @Extender_Page_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Navigation_Pane = @Navigation_Pane AND Extender_Page_ID = @Extender_Page_ID ORDER BY Navigation_Pane ASC, Extender_Page_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40810SS_3] TO [DYNGRP]
GO
