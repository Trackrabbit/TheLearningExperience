SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40810N_2] (@BS int, @Extender_Page_Name char(65), @DEX_ROW_ID int, @Extender_Page_Name_RS char(65), @Extender_Page_Name_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Page_Name_RS IS NULL BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE ( Extender_Page_Name = @Extender_Page_Name AND DEX_ROW_ID > @DEX_ROW_ID OR Extender_Page_Name > @Extender_Page_Name ) ORDER BY Extender_Page_Name ASC, DEX_ROW_ID ASC END ELSE IF @Extender_Page_Name_RS = @Extender_Page_Name_RE BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Extender_Page_Name = @Extender_Page_Name_RS AND ( Extender_Page_Name = @Extender_Page_Name AND DEX_ROW_ID > @DEX_ROW_ID OR Extender_Page_Name > @Extender_Page_Name ) ORDER BY Extender_Page_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Page_ID, Extender_Page_Name, Navigation_Pane, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .EXT40810 WHERE Extender_Page_Name BETWEEN @Extender_Page_Name_RS AND @Extender_Page_Name_RE AND ( Extender_Page_Name = @Extender_Page_Name AND DEX_ROW_ID > @DEX_ROW_ID OR Extender_Page_Name > @Extender_Page_Name ) ORDER BY Extender_Page_Name ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40810N_2] TO [DYNGRP]
GO
