SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20500UN_2] (@BS int, @Extender_View_Desc char(65), @Extender_View_Desc_RS char(65), @Extender_View_Desc_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_View_Desc_RS IS NULL BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE ( Extender_View_Desc > @Extender_View_Desc ) ORDER BY Extender_View_Desc ASC, DEX_ROW_ID ASC END ELSE IF @Extender_View_Desc_RS = @Extender_View_Desc_RE BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE Extender_View_Desc = @Extender_View_Desc_RS AND ( Extender_View_Desc > @Extender_View_Desc ) ORDER BY Extender_View_Desc ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE Extender_View_Desc BETWEEN @Extender_View_Desc_RS AND @Extender_View_Desc_RE AND ( Extender_View_Desc > @Extender_View_Desc ) ORDER BY Extender_View_Desc ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20500UN_2] TO [DYNGRP]
GO
