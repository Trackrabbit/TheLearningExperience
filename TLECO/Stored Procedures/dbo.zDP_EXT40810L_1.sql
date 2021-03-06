SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40810L_1] (@Extender_Page_ID_RS char(15), @Extender_Page_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Page_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 ORDER BY Extender_Page_ID DESC END ELSE IF @Extender_Page_ID_RS = @Extender_Page_ID_RE BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Extender_Page_ID = @Extender_Page_ID_RS ORDER BY Extender_Page_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Extender_Page_ID BETWEEN @Extender_Page_ID_RS AND @Extender_Page_ID_RE ORDER BY Extender_Page_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40810L_1] TO [DYNGRP]
GO
