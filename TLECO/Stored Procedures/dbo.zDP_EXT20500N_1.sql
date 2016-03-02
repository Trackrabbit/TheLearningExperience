SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20500N_1] (@BS int, @Extender_View_ID char(15), @Extender_View_ID_RS char(15), @Extender_View_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_View_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE ( Extender_View_ID > @Extender_View_ID ) ORDER BY Extender_View_ID ASC END ELSE IF @Extender_View_ID_RS = @Extender_View_ID_RE BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE Extender_View_ID = @Extender_View_ID_RS AND ( Extender_View_ID > @Extender_View_ID ) ORDER BY Extender_View_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20500 WHERE Extender_View_ID BETWEEN @Extender_View_ID_RS AND @Extender_View_ID_RE AND ( Extender_View_ID > @Extender_View_ID ) ORDER BY Extender_View_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20500N_1] TO [DYNGRP]
GO
