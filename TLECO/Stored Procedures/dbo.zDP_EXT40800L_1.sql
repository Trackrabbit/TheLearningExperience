SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40800L_1] (@Extender_Menu_ID_RS char(15), @Extender_Menu_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Menu_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 ORDER BY Extender_Menu_ID DESC END ELSE IF @Extender_Menu_ID_RS = @Extender_Menu_ID_RE BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Extender_Menu_ID = @Extender_Menu_ID_RS ORDER BY Extender_Menu_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Extender_Menu_ID BETWEEN @Extender_Menu_ID_RS AND @Extender_Menu_ID_RE ORDER BY Extender_Menu_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40800L_1] TO [DYNGRP]
GO
