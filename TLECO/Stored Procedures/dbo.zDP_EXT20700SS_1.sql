SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700SS_1] (@Extender_Import_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Import_ID = @Extender_Import_ID ORDER BY Extender_Import_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700SS_1] TO [DYNGRP]
GO
