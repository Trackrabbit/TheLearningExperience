SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20500F_3] (@View_Name_RS char(65), @View_Name_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @View_Name_RS IS NULL BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 ORDER BY View_Name ASC, DEX_ROW_ID ASC END ELSE IF @View_Name_RS = @View_Name_RE BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE View_Name = @View_Name_RS ORDER BY View_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE View_Name BETWEEN @View_Name_RS AND @View_Name_RE ORDER BY View_Name ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20500F_3] TO [DYNGRP]
GO
