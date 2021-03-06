SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43400F_2] (@Extender_Lookup_Desc_RS char(65), @Extender_Lookup_Desc_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Lookup_Desc_RS IS NULL BEGIN SELECT TOP 25  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 ORDER BY Extender_Lookup_Desc ASC, DEX_ROW_ID ASC END ELSE IF @Extender_Lookup_Desc_RS = @Extender_Lookup_Desc_RE BEGIN SELECT TOP 25  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 WHERE Extender_Lookup_Desc = @Extender_Lookup_Desc_RS ORDER BY Extender_Lookup_Desc ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 WHERE Extender_Lookup_Desc BETWEEN @Extender_Lookup_Desc_RS AND @Extender_Lookup_Desc_RE ORDER BY Extender_Lookup_Desc ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43400F_2] TO [DYNGRP]
GO
