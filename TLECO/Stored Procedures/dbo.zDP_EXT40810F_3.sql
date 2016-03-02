SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40810F_3] (@Navigation_Pane_RS smallint, @Extender_Page_ID_RS char(15), @Navigation_Pane_RE smallint, @Extender_Page_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Navigation_Pane_RS IS NULL BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 ORDER BY Navigation_Pane ASC, Extender_Page_ID ASC END ELSE IF @Navigation_Pane_RS = @Navigation_Pane_RE BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Navigation_Pane = @Navigation_Pane_RS AND Extender_Page_ID BETWEEN @Extender_Page_ID_RS AND @Extender_Page_ID_RE ORDER BY Navigation_Pane ASC, Extender_Page_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Navigation_Pane BETWEEN @Navigation_Pane_RS AND @Navigation_Pane_RE AND Extender_Page_ID BETWEEN @Extender_Page_ID_RS AND @Extender_Page_ID_RE ORDER BY Navigation_Pane ASC, Extender_Page_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40810F_3] TO [DYNGRP]
GO
