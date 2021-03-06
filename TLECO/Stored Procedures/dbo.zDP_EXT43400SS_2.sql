SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43400SS_2] (@Extender_Lookup_Desc char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT43400 WHERE Extender_Lookup_Desc = @Extender_Lookup_Desc ORDER BY Extender_Lookup_Desc ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43400SS_2] TO [DYNGRP]
GO
