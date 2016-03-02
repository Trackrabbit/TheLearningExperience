SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43400N_1] (@BS int, @Extender_Lookup_ID char(15), @Extender_Lookup_ID_RS char(15), @Extender_Lookup_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Lookup_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 WHERE ( Extender_Lookup_ID > @Extender_Lookup_ID ) ORDER BY Extender_Lookup_ID ASC END ELSE IF @Extender_Lookup_ID_RS = @Extender_Lookup_ID_RE BEGIN SELECT TOP 25  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 WHERE Extender_Lookup_ID = @Extender_Lookup_ID_RS AND ( Extender_Lookup_ID > @Extender_Lookup_ID ) ORDER BY Extender_Lookup_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 WHERE Extender_Lookup_ID BETWEEN @Extender_Lookup_ID_RS AND @Extender_Lookup_ID_RE AND ( Extender_Lookup_ID > @Extender_Lookup_ID ) ORDER BY Extender_Lookup_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43400N_1] TO [DYNGRP]
GO
