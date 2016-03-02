SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40800F_3] (@Toolbar_Group_RS smallint, @Toolbar_Group_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Toolbar_Group_RS IS NULL BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 ORDER BY Toolbar_Group ASC, DEX_ROW_ID ASC END ELSE IF @Toolbar_Group_RS = @Toolbar_Group_RE BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Toolbar_Group = @Toolbar_Group_RS ORDER BY Toolbar_Group ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Menu_ID, Extender_Menu_Name, Toolbar_Group, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT40800 WHERE Toolbar_Group BETWEEN @Toolbar_Group_RS AND @Toolbar_Group_RE ORDER BY Toolbar_Group ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40800F_3] TO [DYNGRP]
GO
