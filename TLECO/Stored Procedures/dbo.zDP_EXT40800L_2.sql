SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40800L_2] (@Extender_Menu_Name_RS char(31), @Extender_Menu_Name_RE char(31)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Menu_Name_RS IS NULL BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 ORDER BY Extender_Menu_Name DESC, DEX_ROW_ID DESC END ELSE IF @Extender_Menu_Name_RS = @Extender_Menu_Name_RE BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Extender_Menu_Name = @Extender_Menu_Name_RS ORDER BY Extender_Menu_Name DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Extender_Menu_Name BETWEEN @Extender_Menu_Name_RS AND @Extender_Menu_Name_RE ORDER BY Extender_Menu_Name DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40800L_2] TO [DYNGRP]
GO
