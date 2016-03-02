SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700SS_3] (@Extender_Type smallint, @Extender_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID ORDER BY Extender_Type ASC, Extender_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700SS_3] TO [DYNGRP]
GO
