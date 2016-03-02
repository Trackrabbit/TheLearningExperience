SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20500SI] (@Extender_View_ID char(15), @Extender_View_Desc char(65), @View_Name char(65), @Use_Display_Names tinyint, @Save_Fields_As_Strings tinyint, @NOTEINDX numeric(19,5), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20500 (Extender_View_ID, Extender_View_Desc, View_Name, Use_Display_Names, Save_Fields_As_Strings, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Extender_View_ID, @Extender_View_Desc, @View_Name, @Use_Display_Names, @Save_Fields_As_Strings, @NOTEINDX, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20500SI] TO [DYNGRP]
GO
